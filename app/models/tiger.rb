class Tiger < ActiveRecord::Base

	def hungry?()
		self.appetite > 0 ? true : false
	end

end
