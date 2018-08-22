# == Schema Information
#
# Table name: set_pupils
#
#  id              :bigint(8)        not null, primary key
#  teaching_set_id :bigint(8)
#  pupil_id        :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class SetPupil < ApplicationRecord
  belongs_to :teaching_set
  belongs_to :pupil
  has_many :report_cycles, through: :teaching_set
  has_many :scores
  has_many :marks
  has_many :reports

end
