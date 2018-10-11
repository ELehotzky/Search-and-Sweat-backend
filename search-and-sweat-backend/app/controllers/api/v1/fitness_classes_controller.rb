class Api::V1::FitnessClassesController < ApplicationController

	def index
		@fitness_classes = FitnessClass.all
		render json: @fitness_classes 
	end

end
