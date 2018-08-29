
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
      self.top_mark    = mark if !top_mark    || mark.percentage > top_mark.percentage
      self.bottom_mark = mark if !bottom_mark || mark.percentage < bottom_mark.percentage
      self.mark_count = self.set_pupil.marks.length
      compute_average_mark
      save
    end
  end

  def remove_from_consideration(mark)
    puts "removing mark from report"
    other_marks = self.set_pupil.marks.reject { |other_mark| other_mark.id == mark.id }
    self.top_mark_id    = other_marks.max_by(&:percentage).id
    self.bottom_mark_id = other_marks.min_by(&:percentage).id
    compute_average_mark
    save
  end

  private

  def compute_average_mark
    marks = self.set_pupil.marks.map { |m| m.percentage }.compact
    total = marks.reduce(:+)
    self.average_mark = (total / self.mark_count).round(1)
  end
end
