class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :user_game
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, inclusion: { in: ["pending", "accepted", "declined"] }
end
