# == Schema Information
#
# Table name: prizes
#
#  id          :integer          not null, primary key
#  prize       :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class PrizeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
