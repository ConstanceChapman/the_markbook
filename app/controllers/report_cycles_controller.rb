class ReportCyclesController < ApplicationController
  def index
    @set_pupils = TeachingSet.find(params[:teaching_set_id]).set_pupils
  end
end
