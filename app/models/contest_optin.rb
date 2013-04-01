class ContestOptin < ActiveRecord::Base
  attr_accessible :contest_id, :optinpartner_id
  
  belongs_to :contest
  belongs_to :optinpartner
end
