class Api::V1::AdminsController < ApplicationController

	skip_before_action only: [:create]

	def create
		
		@admin = Admin.create(admin_params)
		if @admin.valid?
			@token = encode_token(admin_id: @admin_id)
			render json: {admin: AdminSerializer.new(@admin), jwt: @token}, status: :created
		else
			render json: {error: "Please try again"}, status: :not_acceptable
		end
	end

	def profile
		# byebug
		if current_admin
			render json: current_admin
		else
			render json: {error: "No current user found"}
		end
	end


	private 

	def admin_params
		params.require(:auth).permit(:name, :email, :password)
	end
end
