class Space < ApplicationRecord
  belongs_to :owner
  has_many :space_services
  has_many :services, through: :space_services
end
