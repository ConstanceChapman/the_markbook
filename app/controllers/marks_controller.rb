class MarksController < ApplicationController
  def create
  end

  def update
    @mark = Mark.find(params[:id])
    @mark.update(mark_params)
    respond_to do |format|
        format.html {redirect_to teaching_set_tasks_path(@mark.set_pupil.teaching_set)}
        format.js  # <-- will render `app/views/marks/update.js.erb`
      end
  end

  private

  def mark_params
    params.require(:mark).permit(:raw_mark, :comment)
  end
end
