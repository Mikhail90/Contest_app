class StaticPagesController < ApplicationController
  def activeContests
  	@title="Enter to Win!"
  	@contests= Contest.all
  end

  def adminHome
  	@title="Administration Home"
  	@contests=Contest.all
  	@numberOfContestants=Contestant.count
  end
end
