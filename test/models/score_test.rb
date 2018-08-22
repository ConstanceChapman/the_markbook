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

require 'test_helper'

class ScoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
