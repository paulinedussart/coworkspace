class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :desk

  monetize :total_price_cents

  before_save :compute_total_days
  before_save :compute_total_price

  # validates :arrival_date, :departure_date, presence: true
  # validate :departure_date_after_arrival_date
  def compute_total_days
    self.total_days = (departure_date - arrival_date).to_i + 1
  end

  def compute_total_price
    # Methode calul du prix total
    # total_days = (departure_date - arrival_date).to_i + 1
    # Methode calul du prix total
    self.total_price_cents = (total_days * desk.price_per_day_cents) + 3
  end
end
