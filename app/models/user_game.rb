class UserGame < ApplicationRecord
  belongs_to :game
  belongs_to :user
  # validates :title, uniqueness: true, presence: true
  # validates :availibility, presence: true
  # validates :renting_deposit, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :renting_price, :renting_deposit ],
    associated_against: {
      game: [ :title, :description ],
    },
    using: {
      tsearch: { prefix: true }
    }
end
