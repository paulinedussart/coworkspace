class Desk < ApplicationRecord
  belongs_to :space
  has_many :reservations

  # validates :name, presence: true, uniqueness: true
  # validates :photo, presence: true
  # validates :full_address, presence: true
  # validates :price_per_day, :numericality => { :greater_than_or_equal_to => 0 }
  # mount_uploader :photo, PhotoUploader


end
