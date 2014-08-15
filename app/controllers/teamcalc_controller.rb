class TeamcalcController < ApplicationController
  def index
  end
  def solution
    @num_teams = params[:num_teams]
    @num_students = params[:num_students]
  	# redirect_to "/posts?name=#{@name}", notice: "Good work, #{@name}! We will get back to you shortly."
  end
end
