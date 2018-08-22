# == Schema Information
#
# Table name: teaching_sets
#
#  id         :bigint(8)        not null, primary key
#  subject    :string
#  year_group :string
#  end_date   :date
#  start_date :date
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TeachingSetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
