class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  # def library
  #   @user_game = UserGame.find(current_user.id)
  # end

  def dashboard
    @bookings = Booking.where(user_id: current_user)
    # @user_game = UserGame.find(current_user.id)
  end

  # def dashboard
  #   @bookings = current_user.bookings
  # end
end
