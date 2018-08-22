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

require 'test_helper'

class SetPupilTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
