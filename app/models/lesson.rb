# == Schema Information
#
# Table name: lessons
#
#  id              :bigint(8)        not null, primary key
#  start_time      :datetime
#  end_time        :datetime
#  teaching_set_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Lesson < ApplicationRecord
  belongs_to :teaching_set
  has_many :pupils, through: :teaching_set
  has_many :scores, dependent: :destroy
  after_save :make_pupil_scores

  def make_pupil_scores
    self.teaching_set.set_pupils.each do |set_pupil|
      Score.create(
        lesson: self,
        set_pupil: set_pupil
        )
    end
  end
end

