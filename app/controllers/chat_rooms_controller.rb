class ChatRoomsController < ApplicationController
  before_action :authenticate_user!

  def show
    @chat_room = ChatRoom.includes(messages: :sender).where(user_id: current_user.id, owner_id: params[:id]).first_or_create!
  end

  def show_owner
    @chat_room = ChatRoom.includes(messages: :sender).find(params[:id])

    render :show
  end
end

