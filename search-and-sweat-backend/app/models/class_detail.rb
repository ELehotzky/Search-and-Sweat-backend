class ClassDetail < ApplicationRecord

	has_many :fitness_class_details
	has_many :fitness_classes, through: :fitness_class_details

end
