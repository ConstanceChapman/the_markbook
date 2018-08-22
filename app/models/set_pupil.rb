# == Schema Information
#
# Table name: set_pupils
#
#  id              :bigint(8)        not null, primary key
#  teaching_set_id :bigint(8)
#  pupil_id        :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class SetPupil < ApplicationRecord
  belongs_to :teaching_set
  belongs_to :pupil
  has_many :report_cycles, through: :teaching_set
  has_many :scores
  has_many :marks
  has_many :reports

  # def average_score(report_cycle)
  def average_score
    # report_cycle_scores = object.scores.where(
    #   "self.lesson.start_time >= report_cycle.start_date && self.lesson.end_time <= report_cycle.end_date"
    #   )
    sum = scores.map(&:value).reduce(:+)
    number_of_scores = scores.length
    average = sum / number_of_scores.to_f
    return average.round(1)
  end

end
