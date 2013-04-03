# == Schema Information
#
# Table name: contest_optins
#
#  id              :integer          not null, primary key
#  contest_id      :integer
#  optinpartner_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class ContestOptinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
