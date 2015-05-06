class Tiger < ActiveRecord::Base

	def hungry?()
		self.appetite > 0 ? true : false
	end

	def eat(zebra)
		if self.appetite >= zebra.weight
			self.appetite = self.appetite - zebra.weight
		else
			self.appetite = 0
		end

		zebra.destroy
	end

end
