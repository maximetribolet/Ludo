class UserGame < ApplicationRecord
  belongs_to :game_id
  belongs_to :user_id
end
