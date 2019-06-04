class Desk < ApplicationRecord
  belongs_to :space
  has_many :reservations
end
