class Mark < ApplicationRecord
  belongs_to :task
  belongs_to :set_pupil
  validates :raw_mark, presence: true
  validates :set_pupil, uniqueness: true
end
