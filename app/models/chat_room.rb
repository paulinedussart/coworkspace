class ChatRoom < ApplicationRecord
  has_many :messages, dependant: :destroy
end
