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

require 'test_helper'

class ReportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
