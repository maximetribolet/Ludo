class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @user_game = UserGame.find(params[:user_game_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @user_game = UserGame.find(params[:user_game_id])
    @booking.user = current_user
    @booking.user_game = @user_game
    @booking.status = "pending"

    if @booking.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = booking.destroy
    redirect_to root_path, notice: "Booking request canceled"
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
