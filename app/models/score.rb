# == Schema Information
#
# Table name: scores
#
#  id           :bigint(8)        not null, primary key
#  comment      :text
#  set_pupil_id :bigint(8)
#  lesson_id    :bigint(8)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  value        :integer          default(0), not null
#

class Score < ApplicationRecord
  belongs_to :set_pupil
  belongs_to :lesson
  validates :value, inclusion: { in: (-3..3) }
  validates :set_pupil, uniqueness: {scope: :lesson}
end
