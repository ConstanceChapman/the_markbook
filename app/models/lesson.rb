class Lesson < ApplicationRecord
  belongs_to :teaching_set
  has_many :pupils, through: :teaching_set
  has_many :scores
# todo validation unicity scope 1 score per set_pupil per lesson - remove unless
  after_save :make_pupil_scores

  def make_pupil_scores
    self.pupils.each do |pupil|
      # next if Score.where(lesson: self, set_pupil: pupil.set_pupil)
      Score.create(
        lesson: self,
        set_pupil: pupil.set_pupil
        ) unless Score.where(lesson: self, set_pupil: pupil.set_pupil)
    end
  end
end

