# == Schema Information
#
# Table name: contest_prizes
#
#  id         :integer          not null, primary key
#  contest_id :integer
#  prize_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ContestPrizeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
