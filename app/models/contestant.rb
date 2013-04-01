class Contestant < ActiveRecord::Base
  attr_accessible :email, :firstentered, :firstname, :lastentered, :lastname, :zipcode
  has_many :contest_entries
  has_many :contests, through: :contest_entries
end
