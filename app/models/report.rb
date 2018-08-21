class Report < ApplicationRecord
  belongs_to :report_cycle
  belongs_to :set_pupil
  validates :set_pupil, uniqueness: { scope: :report_cycle,
    message: "pupil should have one report per cycle" }
end
