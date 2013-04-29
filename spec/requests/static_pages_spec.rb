require 'spec_helper'

describe "StaticPages" do
  describe "Active Contests" do
    it "should have the content 'Enter to Win!'" do
    	visit '/static_pages/activeContests'
    	page.should have_content('Enter to Win!')
    end
end

    
 
    describe "Admin Home Page" do

        it "should have the content 'Administration Home'" do
            visit '/static_pages/adminHome'
            page.should have_content('Administration Home')
        end

        it "should have a 'number of contestants'" do
            visit '/static_pages/adminHome'
            page.should have_content('Contestants:')
        end

        it "should have a link to 'Create a new Contest'" do
            visit '/static_pages/adminHome'
            page.should have_link('New Contest', href: new_contest_path)
        end

        




    end


  
end