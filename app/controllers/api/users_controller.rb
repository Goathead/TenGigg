class Api::UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		render :show
	end

	def index
		@users = User.all
		render json: @users
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			render :show
		else
			render json: @user.errors.full_messages, status: :unprocessable_entity
		end
	end

	private
	def user_params
		params.require(:user).permit(:username, :image_id)
	end
end
