class UsersController < ApplicationController
	def index
		@users = User.order("id")
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def edit
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to @user, notice: "Saved as new user!"
		else
			render "new"
		end
	end

	def update
		@user = User.find(params[:id])
		@user.assign_attributes(params[:user])
		if @user.save
			redirect_to @user, notice: "Your profiel was updated"
		else
			render "edit"
		end
	end

	def destroy
	end
end
