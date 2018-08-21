class Pupil < ApplicationRecord
  has_many :set_pupils
  has_many :teaching_sets, through: :set_pupils
  validates :first_name, presence: true
  validates :last_name, presence: true
end
