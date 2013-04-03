# == Schema Information
#
# Table name: optinpartners
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  label      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Optinpartner < ActiveRecord::Base
  attr_accessible :label, :name
  
  has_many :contest_optins
  has_many :contests, through: :contest_optins
  
  
      has_many :optin_contestants
  has_many :contests, through: :optin_contestants
  has_many :contestants, through: :optin_contestants
end
