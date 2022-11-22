class UserGamesController < ApplicationController
  def index
    @user_games = UserGame.all
  end

  def show
    @user_games = UserGame.find(params[:user_id])
  end

  def destroy
    @user_games = UserGame.destroy
    redirect_to game_user_games_path(:user_id)
  end

  private

  def set_user
    @user_game = UserGame.find(params[:user_id])
  end

  def user_games_params
    params.require(:user_games).permit(:availibility, :renting_price, :renting_deposit, :game_id, :user_id)
  end
end
