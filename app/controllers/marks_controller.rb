class MarksController < ApplicationController
  def create
  end

  def update
    @mark = Mark.find(params[:id])
    @mark.update(mark_params)
    redirect_to teaching_set_tasks_path(@mark.set_pupil.teaching_set)
  end

  private

  def mark_params
    params.require(:mark).permit(:raw_mark)
  end
end
