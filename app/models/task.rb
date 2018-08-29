# == Schema Information
#
# Table name: tasks
#
#  id              :bigint(8)        not null, primary key
#  title           :string
#  max_mark        :integer
#  teaching_set_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Task < ApplicationRecord
  belongs_to :teaching_set
  belongs_to :report_cycle
  has_many :marks
  validates :title, presence: true, uniqueness: { scope: :teaching_set }, length: { maximum: 18 }

  before_validation :set_report_cycle
  after_create :make_pupil_marks
  after_update :report_check

  def make_pupil_marks
    self.teaching_set.set_pupils.each do |set_pupil|
      Mark.create!(
        task: self,
        set_pupil: set_pupil
      )
    end
  end

  def set_report_cycle
    date = self.created_at ? self.created_at : Time.now
    report_cycle = ReportCycle.where("start_date <= ? AND end_date >= ? AND teaching_set_id = ?", date, date, teaching_set_id).first
    self.report_cycle_id = report_cycle.id
  end

  def report_check
    self.marks.each { |m| m.update_report_stats }
  end
end
