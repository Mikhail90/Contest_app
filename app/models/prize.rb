# == Schema Information
#
# Table name: prizes
#
#  id          :integer          not null, primary key
#  prize       :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Prize < ActiveRecord::Base
  attr_accessible :description, :prize
  
  has_many :contest_prizes
  has_many :contests, through: :contest_prizes
  
  has_many:contest_winners
  has_many :contestants, through: :contest_winners
  
  
end
