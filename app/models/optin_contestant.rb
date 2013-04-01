class OptinContestant < ActiveRecord::Base
  attr_accessible :contest_id, :contestant_id, :optinpartner_id
  
  belongs_to :contest
  belongs_to :optinpartner
  belongs_to :contsetant
  
end
