# == Schema Information
#
# Table name: reports
#
#  id              :bigint(8)        not null, primary key
#  content         :text
#  report_cycle_id :bigint(8)
#  set_pupil_id    :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Report < ApplicationRecord
  belongs_to :report_cycle
  belongs_to :set_pupil
  validates :set_pupil, uniqueness: { scope: :report_cycle,
    message: "pupil should have one report per cycle" }
end
