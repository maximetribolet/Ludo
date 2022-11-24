class Game < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
    against: [ :title, :description ],
    using: {
      tsearch: { prefix: true }
    }
  validates :title, uniqueness: true, presence: true
  validates :year, presence: true
  validates :min_players, presence: true
  validates :max_players, presence: true
  validates :playtime, presence: true
  validates :image_url, presence: true
  validates :average_rating, presence: true
end
