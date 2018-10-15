class FitnessClassSerializer < ActiveModel::Serializer

	attributes :id, :name, :description, :image, :class_length, :price, :fitness_class_categories, :fitness_class_details

	# has_many :fitness_class_categories
	# has_many :fitness_class_details
	# has_many :categories, through: :fitness_class_categories
	# has_many :details, through: :fitness_class_details
	# belongs_to :studio

	def fitness_class_categories
		self.object.fitness_class_categories.map do |category| {
			# byebug
				categoryName: category.category.name
		}
		end
	end

end
