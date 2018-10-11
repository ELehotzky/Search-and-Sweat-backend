class Category < ApplicationRecord

	has_many :fitness_class_categories
	has_many :fitness_classes, through: :fitness_class_categories

end
