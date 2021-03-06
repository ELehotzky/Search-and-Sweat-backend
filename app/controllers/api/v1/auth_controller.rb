class Api::V1::AuthController < ApplicationController

	# skip_before_action :authorized, only: [:create]

	def create
		@admin = Admin.find_by(email: admin_login_params[:email])
		if @admin && @admin.authenticate(admin_login_params[:password])
			token = encode_token({admin_id: @admin.id})
			render json: {admin: AdminSerializer.new(@admin), jwt: token}, status: :accepted
		else
			render json: {message: "Invalid email or password - please try again"}, status: :unauthorized
		end
	end

	private

	def admin_login_params
		params.require(:auth).permit(:email, :password)
	end

end
