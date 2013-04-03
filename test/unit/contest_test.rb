# == Schema Information
#
# Table name: contests
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  slug        :string(255)
#  startdate   :datetime
#  enddate     :datetime
#  rules       :text
#  css         :text
#  promotion   :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ContestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
