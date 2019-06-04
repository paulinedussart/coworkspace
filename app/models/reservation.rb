class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :desk

  # validates :arrival_date, :departure_date, presence: true
  # validate :departure_date_after_arrival_date
end
