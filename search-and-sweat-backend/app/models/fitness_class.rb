class FitnessClass < ApplicationRecord

	has_many :fitness_class_categories
	has_many :fitness_class_details
	has_many :categories, through: :fitness_class_categories
	has_many :details, through: :fitness_class_details
	belongs_to :studio

end
