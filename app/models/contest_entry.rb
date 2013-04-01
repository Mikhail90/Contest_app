class ContestEntry < ActiveRecord::Base
  attr_accessible :contest_id, :contestant_id
  belongs_to :contest
  belongs_to :contestant
end
