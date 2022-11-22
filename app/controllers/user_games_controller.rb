class UserGamesController < ApplicationController

  def index
    @user_games = UserGame.all
  end

  def show
    @user_games = UserGame.find(params[:id])
  end

  def destroy
    @user_games = UserGame.destroy
    redirect_to game_user_games_path(:id)
  end

  private

  def set_user
    @user_game = UserGame.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :adress, :email, :payment_method, :phone_number, :language, :rating, :plz)
  end
end
