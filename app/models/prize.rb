class Prize < ActiveRecord::Base
  attr_accessible :description, :prize
  
  has_many :contest_prizes
  has_many :contests, through: :contest_prizes
  
  has_many:contest_winners
  has_many :contestants, through: :contest_winners
  
  
end
