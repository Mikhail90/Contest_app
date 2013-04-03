# == Schema Information
#
# Table name: contest_optins
#
#  id              :integer          not null, primary key
#  contest_id      :integer
#  optinpartner_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class ContestOptin < ActiveRecord::Base
  attr_accessible :contest_id, :optinpartner_id
  
  belongs_to :contest
  belongs_to :optinpartner
end
