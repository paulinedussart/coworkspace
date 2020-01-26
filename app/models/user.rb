class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews
  has_many :reservations
  has_many :chat_rooms
  has_many :messages

  mount_uploader :avatar, AvatarUploader
  # rajoute avec la mise en place de stripe
  has_many :orders
  # validates :first_name, :last_name, presence: true

end
