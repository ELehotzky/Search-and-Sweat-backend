class Api::V1::FitnessClassDetailsController < ApplicationController

	def index
		@fitness_class_details = FitnessClassDetail.all
		render json: @fitness_class_details
	end

end
