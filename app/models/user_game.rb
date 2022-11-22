class UserGame < ApplicationRecord
  has_many :games
  has_one :user
  belongs_to :game_id
  belongs_to :user_id
  validates :title, uniqueness: true, presence: true
  validates :availibility, presence: true
  validates :renting_deposit, presence: true
end
