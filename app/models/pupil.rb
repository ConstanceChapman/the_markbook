# == Schema Information
#
# Table name: pupils
#
#  id         :bigint(8)        not null, primary key
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pupil < ApplicationRecord
  has_many :set_pupils
  has_many :teaching_sets, through: :set_pupils
  validates :first_name, presence: true
  validates :last_name, presence: true
end
