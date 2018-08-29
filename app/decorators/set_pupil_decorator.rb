class SetPupilDecorator < Draper::Decorator
  delegate_all

  # def get_scores(report_cycle)
  #   report_cycle_scores = []
  #   object.scores.each do |score|
  #     # if score.lesson.report_cycle == report_cycle
  #       report_cycle_scores << score
  #     # end
  #   end
  #   return report_cycle_scores
  # end

  def average_score(report_cycle)
    report_cycle_scores = report_cycle.scores.where(set_pupil: object)
    return 0 if report_cycle_scores.length < 1
    average = (report_cycle_scores.map(&:value).reduce(:+)) / (report_cycle_scores.length).to_f
    return average.round(1)
  end

  def behaviour_comments(report_cycle)
    report_cycle_scores = report_cycle.scores.where(set_pupil: object)
    comments = []
    report_cycle_scores.each do |score|
      comments << score if score.comment
    end
    return comments
  end

  def academic_comments(report_cycle)
    report_cycle_marks = report_cycle.marks
    comments = []
    report_cycle_marks.each do |mark|
      comments << mark if mark.comment != nil
    end
    return comments
  end

end
