class TasksController < ApplicationController
  def index
    @teaching_set = TeachingSet.find(params[:teaching_set_id])
    @result_hash = {}
    @teaching_set.tasks.each do |task|
      @result_hash[task] = task.marks.sort_by { |mark| mark.set_pupil.pupil.last_name }
    end
    @task = Task.new
  end

  def create
    @teaching_set = TeachingSet.find(params[:teaching_set_id])
    @task = Task.new(task_params)
    @task.teaching_set = @teaching_set
    @task.save
    redirect_to teaching_set_tasks_path(@teaching_set)
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to teaching_set_tasks_path(@task.teaching_set)
  end

  private

  def task_params
    params.require(:task).permit(:title, :max_mark)
  end
end
