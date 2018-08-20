class ReportCycle < ApplicationRecord
  belongs_to :teaching_set
  has_many :reports
end
