module TeamcalcHelper
	def team_calc(a,b)
		a = @num_students.to_i
		b = @num_teams.to_i
		size_normal = a / b # number of students in normal size team 
		num_oddman = a % b # number of oddman teams
		size_oddman = size_normal + 1 # number of students in oddman teams
		num_normal = b - num_oddman # number of normal teams

		if a % b == 0 && a / b >= 2
			return "There will be #{num_normal} team(s) of #{size_normal}."
		elsif a / b < 2
			return "You have too many teams, which would result in there being 1 or more teams of 1. Input a greater number of students or a smaller number of teams to correct this."
		else
			return "There will be #{num_normal} team(s) of #{size_normal} and #{num_oddman} team(s) of #{size_oddman}."
		end
	end    
end
