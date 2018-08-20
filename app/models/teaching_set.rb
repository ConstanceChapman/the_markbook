class TeachingSet < ApplicationRecord
  belongs_to :user
  has_many :lessons
  has_many :report_cycles
  has_many :set_pupils
  has_many :pupils, through: :set_pupils
  has_many :tasks
  has_many :marks, through: :tasks
end

# teaching_set = TeachingSet.create! user:user, subject:"Latin", year_group:"Year 7", start_date:Date.new(2017,9,1), end_date:Date.new(2018,8,31)
