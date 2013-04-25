require 'spec_helper'

describe "StaticPages" do
  describe "Active Contests" do
    it "should have the content 'Enter to Win!'" do
    	visit '/static_pages/activeContests'
    	page.should have_content('Enter to Win!')
    end
    it "should have the content 'Winterfell'" do
    	visit '/static_pages/activeContests'
    	page.should have_content('Winterfell')
    end
  end
end
