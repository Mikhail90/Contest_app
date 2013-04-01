class ContestWinner < ActiveRecord::Base
  attr_accessible :contestant_id, :prize_id
  
  belongs_to :prize
  belongs_to :contestant
end
