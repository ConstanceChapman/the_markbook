# == Schema Information
#
# Table name: marks
#
#  id           :bigint(8)        not null, primary key
#  raw_mark     :integer
#  comment      :text
#  task_id      :bigint(8)
#  set_pupil_id :bigint(8)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class MarkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
