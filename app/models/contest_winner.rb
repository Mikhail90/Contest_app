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

class ContestWinner < ActiveRecord::Base
  attr_accessible :contestant_id, :prize_id
  
  belongs_to :prize
  belongs_to :contestant
end
