class UserGamesController < ApplicationController
  before_action :set_list, only: [:show, :destroy]

  @user_game = UserGame

  def index
    @user_games = UserGame.all
  end

  def new
    @game = Game.find(params[:game_id])
    @user_game = UserGame.new
  end

  def create
    @user_game = UserGame.new(user_game_params)
    if @user_game.save
      redirect_to new_game_user_game_path(@user_game)
    else
      render :new
    end
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
