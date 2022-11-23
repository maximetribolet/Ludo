class UsersController < ApplicationController
#   before_action :set_user, only[:destroy]

#   def index
#     @users = User.all
#   end

#   def show
#     @user = User.find(params[:id])
#   end

#   def new
#     @user = User.new
#   end

#   def create
#     @user = User.new(user_params)
#     if @user.save
#       redirect_to root_path, notice: "User succesfully created"
#     else
#       render :new, status: :unprocessable_entity
#     end
#   end

#   def edit
#   end

#   def destroy
#     @user.destroy
#     redirect_to root_path, notice: "User succesfully deleted"
#   end

#   private

#   def set_user
#     @user = User.find(params[:id])
#   end

#   def user_params
#     params.require(:user).permit(:first_name, :last_name, :adress, :email, :payment_method, :phone_number, :language, :rating, :plz)
#   end
end
