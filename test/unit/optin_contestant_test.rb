# == Schema Information
#
# Table name: optin_contestants
#
#  id              :integer          not null, primary key
#  contest_id      :integer
#  optinpartner_id :integer
#  contestant_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class OptinContestantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
