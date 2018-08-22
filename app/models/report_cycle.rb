# == Schema Information
#
# Table name: report_cycles
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  start_date      :datetime
#  end_date        :datetime
#  teaching_set_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class ReportCycle < ApplicationRecord
  belongs_to :teaching_set
  has_many :reports
  after_save :make_pupil_reports

  def make_pupil_reports
    self.teaching_set.set_pupils.each do |set_pupil|
      Report.create(
        report_cycle: self,
        set_pupil: set_pupil
        )
    end
  end
end
