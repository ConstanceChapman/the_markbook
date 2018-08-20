class Task < ApplicationRecord
  belongs_to :teaching_set
  has_many :marks
end
