# == Schema Information
#
# Table name: report_cycles
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  start_date      :datetime
#  end_date        :datetime
#  teaching_set_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class ReportCycleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
