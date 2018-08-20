class Score < ApplicationRecord
  belongs_to :set_pupil
  belongs_to :lesson
  validates :value, inclusion: { in: (-3..3) }
end
