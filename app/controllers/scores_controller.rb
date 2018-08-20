class ScoresController < ApplicationController
  def update
    @score = Score.find(params[:id])
    if score_params[:increment]
      @score.update(value: score_params[:increment])
    elsif score_params[:decrement]
      @score.update(value: score_params[:decrement])
    elsif score_params[:comment]
      @score.update(score_params)
    end
    redirect_to lesson_path(@score.lesson)
  end

  private

  def score_params
    params.require(:score).permit(:increment, :decrement, :comment)
  end
end
