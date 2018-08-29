class TasksController < ApplicationController
  def index
    @teaching_set = TeachingSet.where(id: params[:teaching_set_id]).includes(tasks: { marks: { set_pupil: :pupil } })
    @result_hash = {}
    @teaching_set = @teaching_set.first
    @teaching_set.tasks.each do |task|
      @result_hash[task] = task.marks.sort_by { |mark| mark.set_pupil.pupil.last_name }
    end
    @task = Task.new
  end

  def create
    @teaching_set = TeachingSet.find(params[:teaching_set_id])
    @task = Task.new(task_params)
    @task.teaching_set = @teaching_set
    @result_hash = {}
    @teaching_set.tasks.each do |task|
      @result_hash[task] = task.marks.sort_by { |mark| mark.set_pupil.pupil.last_name }
    end
    if @task.save
      respond_to do |format|
        # format.html { redirect_to teaching_set_tasks_path(@teaching_set) }
        format.js # <-- will render `app/views/tasks/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'tasks/index' }
        format.js
      end
    end
  end

  def update
    @task = Task.find(params[:id])
    @task.update!(task_params)
    redirect_to teaching_set_tasks_path(@task.teaching_set)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.marks.each do |mark|
      mark.top_report.remove_from_consideration(mark)    if mark.top_report
      mark.bottom_report.remove_from_consideration(mark) if mark.bottom_report
      mark.destroy
    end
    @task.destroy
    # redirect_to teaching_set_tasks_path(@task.teaching_set)
  end

  private

  def task_params
    params.require(:task).permit(:title, :max_mark)
  end

  def nav_status
    @nav = "marks"
  end
end
