class TeachingSet < ApplicationRecord
  belongs_to :user
  has_many :lessons
  has_many :report_cycles
  has_many :set_pupils
  has_many :pupils, through: :set_pupils
  has_many :tasks
  has_many :marks, through: :tasks
  validates :subject, presence: true
  validates :year_group, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
