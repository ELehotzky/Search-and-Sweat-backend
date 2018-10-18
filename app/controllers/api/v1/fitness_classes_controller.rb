class Api::V1::FitnessClassesController < ApplicationController

	def index
		@fitness_classes = FitnessClass.all
		render json: @fitness_classes 
	end

	def create
		@fitness_class = FitnessClass.create(fitness_class_params)
		if @fitness_class.valid?
			render json: {fitness_class: AdminSerializer.new(@fitness_class), jwt: @token}, status: :created
		else
			render json: {error: "Please try again"}, status: :not_acceptable
		end
	end


	private 

	def fitness_class_params
		params.permit(:name, :description, :image, :class_length, :price)
	end

end