# == Schema Information
#
# Table name: marks
#
#  id           :bigint(8)        not null, primary key
#  raw_mark     :integer
#  comment      :text
#  task_id      :bigint(8)
#  set_pupil_id :bigint(8)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Mark < ApplicationRecord
  belongs_to :task
  belongs_to :set_pupil
  validates :set_pupil, uniqueness: { scope: :task }
  after_save :update_report_stats, if: :raw_mark

  include Comparable

  def return_report_cycle
    date = task.created_at
    ReportCycle.where("start_date <= ? AND end_date >= ? AND teaching_set_id = ?", date, date, task.teaching_set_id).first
  end

  def percentage
    ((raw_mark) / (task.max_mark).to_f * 100).round(1) unless raw_mark.nil?
  end

  def <=>(other)
    percentage <=> other.percentage
  end

  def update_report_stats
    reports = self.set_pupil.reports
    reports.each do |report|
      report.update_report(self) if report.report_cycle == self.task.report_cycle
    end
  end
end
