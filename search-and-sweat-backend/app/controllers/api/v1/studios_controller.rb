class Api::V1::StudiosController < ApplicationController

	def index
		@studios = Studio.all
		render json: @studios 
	end


end
