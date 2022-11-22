class GameRatingsController < ApplicationController

  def index
    @game_ratings = GameRating.all
  end

  def show
    @game_rating = GameRating.find(game_id.params[:id])
  end

  private

  def set_game_rating
    @game_rating = GameRating.find(params[:id])
  end

  def game_rating_params
    params.require(:game_rating).permit(:coment, :rating, :game_id)
  end
end
