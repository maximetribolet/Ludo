class Booking < ApplicationRecord
  belongs_to :user_id
  belongs_to :user_game
  has_many :users
  has_one :game
  validates :status, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
