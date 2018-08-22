class SetPupilDecorator < Draper::Decorator
  delegate_all

  def average_score(report_cycle)
    report_cycle_scores = object.scores.where(
      "self.lesson.start_time >= report_cycle.start_date && self.lesson.end_time <= report_cycle.end_date"
      )
    sum = object.scores.map(&:value).reduce(:+)
    number_of_scores = object.scores.length
    average = sum / number_of_scores.to_f
    return average.round(1)
  end

end
