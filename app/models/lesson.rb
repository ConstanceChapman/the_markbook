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
  after_create_commit :make_pupil_scores
  after_update_commit :make_pupil_scores
  # after_save :make_pupil_scores

  def make_pupil_scores
    self.teaching_set.set_pupils.each do |set_pupil|
      Score.create(
        lesson: self,
        set_pupil: set_pupil
        )
    end
  end

  def previous
    previous_lessons = self.teaching_set.lessons.map do |lesson|
      lesson if lesson.start_time < self.start_time
    end
    previous_lessons.compact.sort_by{ |l| l.start_time }.last
  end

  def next
    next_lessons = self.teaching_set.lessons.map do |lesson|
      lesson if lesson.start_time > self.start_time
    end
    next_lessons.compact.sort_by{ |l| l.start_time }.first
  end
end

