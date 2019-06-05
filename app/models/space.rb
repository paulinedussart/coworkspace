class Space < ApplicationRecord
  belongs_to :owner
  has_many :space_services
  has_many :services, through: :space_services
  has_many :desks, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :search_by_name_and_description_and_address,
    against: [ :name, :address, :description ],
    using: {
      tsearch: { prefix: true }
    }

  mount_uploader :photo, PhotoUploader

  def self.available_spaces(arrival_date)
    self.all.select do |space|
      # je selectionne les desks des espaces
      # selectionner les desks disponibles ou la date darrivee est superieur a la date de depart de la precedente resa
      available_desks = space.desks.joins(:reservations).where("reservations.departure_date < ?", arrival_date).distinct
      never_used_desks = space.desks.select { |desk| desk.reservations.count == 0 }
      all_available_desks = (available_desks + never_used_desks).uniq

      all_available_desks.length > 0
    end
  end


end
