# == Schema Information
#
# Table name: contest_entries
#
#  id            :integer          not null, primary key
#  contest_id    :integer
#  contestant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ContestEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
