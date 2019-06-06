class ChatRoomsController < ApplicationController
  def show
    @chat_room = ChatRoom.includes(messages: :sender).find(params[:id])
  end
end
