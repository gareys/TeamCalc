module TeamcalcHelper
	def team_calc(a,b)
		a = @num_students.to_i
		b = @num_teams.to_i
		size_normal = a / b # number of students in normal size team 
		d = a % b # number of oddman teams
		size_oddman = size_normal + 1 # number of students in oddman teams
		num_normal = b - d # number of normal teams
		num_oddman = d # number of oddman teams

		if a % b == 0
			@team_size = a / b
			return "There will be #{@num_teams} of #{size_normal}"
		else
			return "There will be #{num_normal} teams of #{size_normal} and #{num_oddman} teams of #{size_oddman}"
		end
	end
end
