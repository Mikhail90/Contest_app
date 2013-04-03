# == Schema Information
#
# Table name: contest_winners
#
#  id            :integer          not null, primary key
#  contestant_id :integer
#  prize_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ContestWinnerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
