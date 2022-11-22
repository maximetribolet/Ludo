class Booking < ApplicationRecord
  belongs_to :user_id
  belongs_to :user_game
end
