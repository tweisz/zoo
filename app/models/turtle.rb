class Turtle < ActiveRecord::Base

	def hide()
		# turtle's status is true if turtle is inside its shell
		self.status = true
	end

	def emerge()
		# turtle's status is false if turtle is outside its shell
		self.status = false
	end

end
