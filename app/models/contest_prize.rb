class ContestPrize < ActiveRecord::Base
  attr_accessible :contest_id, :prize_id
  
  belongs_to :contest
  belongs_to :prize
  
end
