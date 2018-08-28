
# == Schema Information
#
# Table name: reports
#
#  id              :bigint(8)        not null, primary key
#  content         :text
#  report_cycle_id :bigint(8)
#  set_pupil_id    :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Report < ApplicationRecord
  belongs_to :report_cycle
  belongs_to :set_pupil
  belongs_to :top_mark, class_name: "Mark", foreign_key: "top_mark_id", optional: true
  belongs_to :bottom_mark, class_name: "Mark", foreign_key: "bottom_mark_id", optional: true
  validates :set_pupil, uniqueness: { scope: :report_cycle,
    message: "pupil should have one report per cycle" }

  def update_report(mark)
    if mark.raw_mark
      self.top_mark    = mark if !top_mark    || mark > top_mark
      self.bottom_mark = mark if !bottom_mark || mark < bottom_mark
      self.mark_count += 1
      if average_mark
        self.average_mark = ((self.average_mark * (self.mark_count - 1) + mark.percentage) / self.mark_count).round(1)
      else
        self.average_mark = mark.percentage
      end
      save
    end
  end
  # def update_report(mark)
  #   report_cycle_marks = report_cycle.marks
  #   # top, bottom = nil, nil
  #   count, total = 0, 0
  #   report_cycle_marks.each do |mark|
  #     self.top_mark    = mark if !top_mark    || mark > top_mark
  #     self.bottom_mark = mark if !bottom_mark || mark < bottom_mark
  #     count += 1
  #     total += mark.percentage
  #   end
  #   if count > 0
  #     self.average = (total / count).round(1)
  #     # return {
  #     #   top: {
  #     #     task: "#{top.task.title}",
  #     #     percentage: top.percentage,
  #     #     raw: "#{top.raw_mark}/#{top.task.max_mark}"
  #     #   },
  #     #   bottom: {
  #     #     task: "#{bottom.task.title}",
  #     #     percentage: bottom.percentage,
  #     #     raw: "#{bottom.raw_mark}/#{bottom.task.max_mark}"
  #     #   },
  #     #   average: average,
  #     #   count: count
  #     # }
  #   # else
  #   #   return { average: 0, count: 0 }
  #   end
  # end
end
