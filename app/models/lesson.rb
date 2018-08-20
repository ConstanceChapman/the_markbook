class Lesson < ApplicationRecord
  belongs_to :teaching_set
  has_many :scores
end
