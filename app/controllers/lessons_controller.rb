class LessonsController < ApplicationController
  def index
    @teaching_set = TeachingSet.find(params[:teaching_set_id])
    @lessons = Lesson.where(teaching_set: @teaching_set)
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def nav_status
    @nav = "lessons"
  end
end
