class SetPupilDecorator < Draper::Decorator
  delegate_all

  def get_scores(report_cycle)
    report_cycle_scores = []
    object.scores.each do |score|
      if score.lesson.report_cycle == report_cycle
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

  # def get_valid_marks(report_cycle)
  #   object.marks.select do |mark|
  #     mark.return_report_cycle == report_cycle && !mark.raw_mark.nil?
  #   end
  # end

  # def average_mark(report_cycle)
  #   report_cycle_marks = get_valid_marks(report_cycle)
  #   return 0 if report_cycle_marks.length < 1
  #   percentages = report_cycle_marks.map(&:percentage)
  #   average = percentages.reduce(:+) / (report_cycle_marks.length).to_f
  #   return average.round(1)
  # end

  # def top_mark(report_cycle)
  #   report_cycle_marks = get_valid_marks(report_cycle)
  #   top = report_cycle_marks.sort_by! { |mark| mark.percentage }.last
  #   return {
  #     task: "#{top.task.title}",
  #     percentage: top.percentage,
  #     raw: "#{top.raw_mark}/#{top.task.max_mark}"
  #   }
  # end

  # def bottom_mark(report_cycle)
  #   report_cycle_marks = get_valid_marks(report_cycle)
  #   bottom = report_cycle_marks.sort_by! { |mark| mark.percentage }.first
  #   return {
  #     task: "#{bottom.task.title}",
  #     percentage: bottom.percentage,
  #     raw: "#{bottom.raw_mark}/#{bottom.task.max_mark}"
  #   }
  # end

  # def get_mark_stats(report_cycle)
  #   report_cycle_marks = get_valid_marks(report_cycle)
  #   top, bottom = nil, nil
  #   count, total = 0, 0
  #   report_cycle_marks.each do |mark|
  #     top    = mark if !top    || mark.percentage > top.percentage
  #     bottom = mark if !bottom || mark.percentage < bottom.percentage
  #     count += 1
  #     total += mark.percentage
  #   end
  #   if count > 0
  #     average = (total / count).round(1)
  #     return {
  #       top: {
  #         task: "#{top.task.title}",
  #         percentage: top.percentage,
  #         raw: "#{top.raw_mark}/#{top.task.max_mark}"
  #       },
  #       bottom: {
  #         task: "#{bottom.task.title}",
  #         percentage: bottom.percentage,
  #         raw: "#{bottom.raw_mark}/#{bottom.task.max_mark}"
  #       },
  #       average: average,
  #       count: count
  #     }
  #   else
  #     return { average: 0, count: 0 }
  #   end
  # end

  def behaviour_comments(report_cycle)
    report_cycle_scores = get_scores(report_cycle)
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
