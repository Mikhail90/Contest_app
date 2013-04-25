# == Schema Information
#
# Table name: contestants
#
#  id           :integer          not null, primary key
#  firstname    :string(255)
#  lastname     :string(255)
#  email        :string(255)
#  firstentered :datetime
#  lastentered  :datetime
#  zipcode      :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Contestant < ActiveRecord::Base
  attr_accessible :email, :firstentered, :firstname, :lastentered, :lastname, :zipcode
  has_many :contest_entries
  has_many :contests, :through => :contest_entries
end
