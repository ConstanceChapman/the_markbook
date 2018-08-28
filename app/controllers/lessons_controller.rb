class LessonsController < ApplicationController
  def index
    @teaching_set = TeachingSet.find(params[:teaching_set_id])
    @lessons = Lesson.where(teaching_set: @teaching_set)
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(lesson_params)
  end

  def nav_status
    @nav = "lessons"
  end

  private

  def lesson_params
    params.require(:lesson).permit(:comment)
  end
end
