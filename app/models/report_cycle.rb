class ReportCycle < ApplicationRecord
  belongs_to :teaching_set
  has_many :reports, dependent: :destroy
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
