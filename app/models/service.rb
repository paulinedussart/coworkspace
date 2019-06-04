class Service < ApplicationRecord
  has_many :space_services
  has_many :spaces, through: :space_services
end
