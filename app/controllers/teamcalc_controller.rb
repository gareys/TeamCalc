class TeamcalcController < ApplicationController
  def index
  end
  def solution
    @num_teams = params[:num_teams]
    @students = params[:students]
    @list_students = @students.split(/\r\n|\n/) # create separate entries per line from text area
    @list_students.reject!(&:empty?) # remove empty values from students array
    @num_students = @list_students.count # number of students in the array
    @size_normal = @num_students.to_i / @num_teams.to_i # number of students in normal teams 
    @num_oddman = @num_students.to_i % @num_teams.to_i # number of oddman teams
    @size_oddman = @size_normal + 1 # number of students in oddman teams
    @num_normal = @num_teams.to_i - @num_oddman # number of normal teams
  	# redirect_to "/posts?name=#{@name}", notice: "Good work, #{@name}! We will get back to you shortly."
  end
end
