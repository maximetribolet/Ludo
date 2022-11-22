class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = booking.destroy
    redirect_to root_path, notice: "Booking request canceled"
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    if booking.save
      redirect_to game_booking_index_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @booking = Booking.find(params[:id])
  end

  def user_params
    params.require(:booking).permit(:status, :start_date, :end_date, :user_id, :user_game_id)
  end
end
