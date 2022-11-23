class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new
    if @game.save
      redirect_to games_path, notice: "Game succesfully created"
    else
      render :new, status: :unprocessable_entity
    end
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
