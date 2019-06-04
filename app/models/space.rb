class Space < ApplicationRecord
  belongs_to :owner
  has_many :space_services
  has_many :services, through: :space_services

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :search_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true }
    }
end
