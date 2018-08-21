class Task < ApplicationRecord
  belongs_to :teaching_set
  has_many :marks
  validates :title, presence: true, uniqueness: { scope: :teaching_set }
end
