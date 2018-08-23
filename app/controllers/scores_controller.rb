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
    respond_to do |format|
        format.html {redirect_to teaching_set_lesson_path(@score.lesson.teaching_set_id, @score.lesson.id)}
        format.js  # <-- will render `app/views/scores/update.js.erb`
      end
  end

  private

  def score_params
    params.require(:score).permit(:increment, :decrement, :comment)
  end
end
