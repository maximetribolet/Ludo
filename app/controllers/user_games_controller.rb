class UserGamesController < ApplicationController
  before_action :set_user_game, only: [:show, :destroy]

  def index
    @user_games = UserGame.all
  end

  def new
    # @game = Game.find(params[:game_id])
    @user_game = UserGame.new
  end

  def create
    @user_game = UserGame.new(user_games_params)
    @user_game.user = current_user

    if @user_game.save
      redirect_to user_game_path(@user_game)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @user_games = UserGame.destroy
    redirect_to game_user_games_path(:user_id)
  end

  private

  def set_user_game
    @user_game = UserGame.find(params[:id])
  end

  def user_games_params
    params.require(:user_game).permit(:availibility, :renting_price, :renting_deposit, :game_id, :user_id)
  end
end
