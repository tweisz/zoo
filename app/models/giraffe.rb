class Giraffe < ActiveRecord::Base
	def guess_age()
		# maximum height 18 feet
		# fully grown at 6 years old
		# 6 feet tall at birth
		# 12 feet tall at 2 years old
		height = self.height
		
		if height < 6
			age = 0
		elsif height < 10
			age = 1
		elsif height < 13
			age = 2
		elsif height < 15
			age = 3
		elsif height < 16
			age = 4
		elsif height < 17
			age = 5
		else
			age = 6
		end
	end
end
