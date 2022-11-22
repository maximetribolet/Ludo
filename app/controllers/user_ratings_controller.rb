class UserRatingsController < ApplicationController
  def index
    @user_ratings = UserRating.all
  end

  def show
    @user_rating = UserRating.find(params[:user_id])
  end

  def destroy
    @user_rating = UserRating.destroy
    redirect_to user_path(:user_id)
  end

  def edit
  end

  def new
    @user_rating = UserRating.new
  end

  def create
    @user_rating = UserRating.new
    if @user_rating.save
      redirect_to user_path(:user_id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_user_rating
    @user_rating = UserRating.find(params[:user_id])
  end

  def user_rating_params
    params.require(:user_rating).permit(:comment, :rating, :user_id)
  end
end
