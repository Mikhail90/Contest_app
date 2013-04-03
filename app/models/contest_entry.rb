# == Schema Information
#
# Table name: contest_entries
#
#  id            :integer          not null, primary key
#  contest_id    :integer
#  contestant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class ContestEntry < ActiveRecord::Base
  attr_accessible :contest_id, :contestant_id
  belongs_to :contest
  belongs_to :contestant
end
