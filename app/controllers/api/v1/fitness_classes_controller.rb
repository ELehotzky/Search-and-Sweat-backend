class Api::V1::FitnessClassesController < ApplicationController

	def index
		@fitness_classes = FitnessClass.all
		render json: @fitness_classes 
	end

	def create
		@fitness_class = FitnessClass.create(fitness_class_params)
		cd = ClassDetail.create(time: params[:time], instructor: "tbd")
		fcd = FitnessClassDetail.create(fitness_class_id: @fitness_class.id, class_detail_id: cd.id)

		# fc = format_fitness_class(@fitness_class, cd, params[:categories])
		if @fitness_class.valid?
			 # render json: {fitness_class: FitnessClassSerializer.new(@fitness_class)}, status: :created
			render json: @fitness_class, include:[ :fitness_class_categories, :fitness_class_details], status: :created
			# render json: {fitness_class: @fitness_class, jwt: @token}, status: :created
		else
			render json: {error: "Please try again"}, status: :not_acceptable
		end
	end


	private 

	def fitness_class_params
		params.permit(:name, :studio_id, :description, :image, :class_length, :price, category_ids:[])
	end

	def format_fitness_class(fc, cd, categories)
		
		return {
			name: fc.name,
			id: fc.id,
			description: fc.description,
			image: fc.image,
			class_length: fc.class_length, 
			price: fc.price,
			fitness_class_categories: categories,
			fitness_class_details: [cd],
			studio_id: fc.studio_id
		}
	end

end