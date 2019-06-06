class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews
  has_many :reservations
  has_many :messages, dependent: :destroy

  mount_uploader :avatar, PhotoUploader
  # validates :first_name, :last_name, presence: true
end
