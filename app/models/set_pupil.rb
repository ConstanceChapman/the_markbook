class SetPupil < ApplicationRecord
  belongs_to :teaching_set
  belongs_to :pupil
  has_many :report_cycles, through: :teaching_set
  has_many :scores
  has_many :marks
  has_many :reports
end
