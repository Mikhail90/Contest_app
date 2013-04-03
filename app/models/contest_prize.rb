# == Schema Information
#
# Table name: contest_prizes
#
#  id         :integer          not null, primary key
#  contest_id :integer
#  prize_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ContestPrize < ActiveRecord::Base
  attr_accessible :contest_id, :prize_id
  
  belongs_to :contest
  belongs_to :prize
  
end
