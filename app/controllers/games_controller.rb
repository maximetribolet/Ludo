class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def destroy
    @game = Game.destroy
    redirect_to games_path, notice: "Game succesfully deleted"
  end

    private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:title, :editor, :category, :year, :min_players, :max_players, :playtime, :image_url, :average_rating)
  end
end
