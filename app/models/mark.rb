class Mark < ApplicationRecord
  belongs_to :task
  belongs_to :set_pupil
  validates :set_pupil, uniqueness: { scope: :task }
end
