class Game < ApplicationRecord
  validates :title, uniqueness: true, presence: true
  validates :year, presence: true
  validates :min_players, presence: true
  validates :max_players, presence: true
  validates :playtime, presence: true
  validates :image_url, presence: true
  validates :average_rating, presence: true
  has_many :user_games, dependent: :destroy
end
