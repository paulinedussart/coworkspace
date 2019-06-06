class Message < ApplicationRecord
  belongs_to :chat_room
  belongs_to :sender, polymorphic: true
  after_create :broadcast_message

  def from?(some_entity)
    sender == some_entity
  end

  def broadcast_message
    ActionCable.server.broadcast("chat_room_#{chat_room.id}", {
      message_partial: ApplicationController.renderer.render(partial: "messages/message", locals: { message: self, user_is_messages_author: false }),
      current_entity_id: sender.id
    })

  end
end
