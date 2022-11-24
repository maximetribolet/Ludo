class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def Library
    @user_game = user_game.find(curre)
  end

  def dashboard
    @bookings = current_user.bookings
  end
end
