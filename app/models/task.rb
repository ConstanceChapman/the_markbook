class Task < ApplicationRecord
  belongs_to :teaching_set
  has_many :marks, dependent: :destroy
  validates :title, presence: true, uniqueness: { scope: :teaching_set }

  after_save :make_pupil_marks

  def make_pupil_marks
    self.teaching_set.set_pupils.each do |set_pupil|
      Mark.create(
        task: self,
        set_pupil: set_pupil
        )
    end
  end
end
