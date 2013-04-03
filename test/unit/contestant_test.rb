# == Schema Information
#
# Table name: contestants
#
#  id           :integer          not null, primary key
#  firstname    :string(255)
#  lastname     :string(255)
#  email        :string(255)
#  firstentered :datetime
#  lastentered  :datetime
#  zipcode      :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class ContestantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
