class Space < ApplicationRecord
  belongs_to :owner
  has_many :space_services
  has_many :desks, dependent: :destroy
  has_many :services, through: :space_services
  has_many :reviews, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :search_by_name_and_description_and_address,
    against: [ :name, :address, :description ],
    using: {
      tsearch: { prefix: true }
    }

  mount_uploader :photo, PhotoUploader
end
