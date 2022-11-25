class UserGamesController < ApplicationController
  before_action :set_user_game, only: [:show, :destroy]

  def index
    if params[:query].present?
      @user_games = UserGame.global_search(params[:query]).where.not(user_id: current_user)

    else
      @user_games = UserGame.where.not(user_id: current_user)
    end
  end

  def mine
    @user_games = UserGame.where(user_id: current_user)
  end

  def new
    @user_game = UserGame.new
  end

  def create
    @user_game = UserGame.new(user_games_params)
    @user_game.user = current_user
    @user_game.availibility = true

    if @user_game.save
      redirect_to user_game_path(@user_game)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @user_game = UserGame.find(params[:id])
    @user_game.destroy
    redirect_to user_games_path
  end

  private

  def set_user_game
    @user_game = UserGame.find(params[:id])
  end

  def user_games_params
    params.require(:user_game).permit(:renting_price, :renting_deposit, :game_id)
  end
end
