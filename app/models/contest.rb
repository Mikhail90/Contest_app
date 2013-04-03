# == Schema Information
#
# Table name: contests
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  slug        :string(255)
#  startdate   :datetime
#  enddate     :datetime
#  rules       :text
#  css         :text
#  promotion   :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Contest < ActiveRecord::Base
  attr_accessible :css, :description, :enddate, :promotion, :rules, :slug, :startdate, :title  
  
  has_many :contest_entries
  has_many :contestants, through: :contest_entries
  

  has_many :contest_prizes
  has_many :prizes, through: :contest_prizes  
  
  has_many :contest_optins
  has_many :optinpartners, through: :contest_optins
  
    has_many :optin_contestants
  has_many :optinpartners, through: :optin_contestants
  has_many :contestants, through: :optin_contestants
  
end
