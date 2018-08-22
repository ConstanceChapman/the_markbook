# == Schema Information
#
# Table name: tasks
#
#  id              :bigint(8)        not null, primary key
#  title           :string
#  max_mark        :integer
#  teaching_set_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Task < ApplicationRecord
  belongs_to :teaching_set
  has_many :marks
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
