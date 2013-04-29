require 'spec_helper'

describe "Contest" do 

	describe "A new contest" do
		it "must have a prize" do
			@contest = Contest.new
			@contest.id.should == nil
			@prize = @contest.prizes.new
			@prize.prize="YAY!"
			@prize.save
			@contest.prizes.any?.should == true
	end
	end


	
end