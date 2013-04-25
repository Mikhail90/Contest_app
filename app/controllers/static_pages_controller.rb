class StaticPagesController < ApplicationController
  def activeContests
  	@title="Enter to Win!"
  	@contests= Contest.all
  end
end
