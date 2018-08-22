class ReportCyclesController < ApplicationController
  def index
    # @articles = ArticleDecorator.decorate_collection(Article.all)
    teaching_set = TeachingSet.find(params[:teaching_set_id])
    # @set_pupils = SetPupilDecorator.decorate_collection(teaching_set.set_pupils)
    @set_pupils = teaching_set.set_pupils
  end
end
