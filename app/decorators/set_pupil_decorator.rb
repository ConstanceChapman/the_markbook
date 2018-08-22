class SetPupilDecorator < Draper::Decorator
  delegate_all

  def get_scores(report_cycle)
    report_cycle_scores = []
    object.scores.each do |score|
      if score.return_report_cycle == report_cycle
        report_cycle_scores << score
      end
    end
    return report_cycle_scores
  end

  def average_score(report_cycle)
    report_cycle_scores = get_scores(report_cycle)
    return 0 if report_cycle_scores.length < 1
    average = (report_cycle_scores.map(&:value).reduce(:+)) / (report_cycle_scores.length).to_f
    return average.round(1)
  end

  def get_valid_marks(report_cycle)
    report_cycle_marks = []
    object.marks.each do |mark|
      if mark.return_report_cycle == report_cycle && mark.raw_mark.nil? == false
        report_cycle_marks << mark
      end
    end
    return report_cycle_marks
  end

  def average_mark(report_cycle)
    report_cycle_marks = get_valid_marks(report_cycle)
    return 0 if report_cycle_marks.length < 1
    percentages = report_cycle_marks.map(&:percentage)
    average = percentages.reduce(:+) / (report_cycle_marks.length).to_f
    return average.round(1)
  end

  def top_mark(report_cycle)
    report_cycle_marks = get_valid_marks(report_cycle)
    return "No marks recorded" if report_cycle_marks.length < 1
    top = report_cycle_marks.sort_by! { |mark| mark.percentage }.last
    return "#{top.task.title} #{top.percentage}% (#{top.raw_mark}/#{top.task.max_mark})"
  end

  def bottom_mark(report_cycle)
    report_cycle_marks = get_valid_marks(report_cycle)
    return "No marks recorded" if report_cycle_marks.length < 1
    top = report_cycle_marks.sort_by! { |mark| mark.percentage }.first
    return "#{top.task.title} #{top.percentage}% (#{top.raw_mark}/#{top.task.max_mark})"
  end

  def behaviour_comments(report_cycle)
    report_cycle_scores = get_scores(report_cycle)
    comments = []
    report_cycle_scores.each do |score|
      comments << score.comment if score.comment
    end
    return comments
  end

end