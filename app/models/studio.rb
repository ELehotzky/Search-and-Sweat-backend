class Studio < ApplicationRecord

	# before_validation :set_promo
	# before_validation :set_image


	has_many :fitness_classes
	belongs_to :admin

	# def set_promo
	# 	self.promo ||= nil 
	# end

	def set_image
		self.image ||= "https://images.pexels.com/photos/917526/pexels-photo-917526.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
	end


end