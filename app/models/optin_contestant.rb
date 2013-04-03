# == Schema Information
#
# Table name: optin_contestants
#
#  id              :integer          not null, primary key
#  contest_id      :integer
#  optinpartner_id :integer
#  contestant_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class OptinContestant < ActiveRecord::Base
  attr_accessible :contest_id, :contestant_id, :optinpartner_id
  
  belongs_to :contest
  belongs_to :optinpartner
  belongs_to :contsetant
  
end
