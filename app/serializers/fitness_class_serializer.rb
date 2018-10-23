class FitnessClassSerializer < ActiveModel::Serializer

	attributes :id, :name, :description, :image, :class_length, :price, :fitness_class_categories, :fitness_class_details
	belongs_to :studio

	def fitness_class_categories
		self.object.fitness_class_categories.map do |cat| {
			categoryName: cat.category.name
		}
		end
	end

	def fitness_class_details
		self.object.fitness_class_details.map do |detail| {
			instructor: detail.class_detail.instructor,
			time: detail.class_detail.time
		}
		end
	end

end
