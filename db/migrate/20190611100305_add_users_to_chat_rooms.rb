class AddUsersToChatRooms < ActiveRecord::Migration[5.2]
  def change
    add_reference :chat_rooms, :user, foreign_key: true, index: true
    add_reference :chat_rooms, :owner, foreign_key: true, index: true
  end
end
