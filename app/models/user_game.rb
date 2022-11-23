class UserGame < ApplicationRecord
  has_many :games
  has_one :user
  belongs_to :game
  belongs_to :user
  # validates :title, uniqueness: true, presence: true
  # validates :availibility, presence: true
  # validates :renting_deposit, presence: true
end
