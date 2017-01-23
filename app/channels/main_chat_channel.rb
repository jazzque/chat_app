class MainChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "main_chat_channel"
  end

  def send_message(data)
    ActionCable.server.broadcast("main_chat_channel", Message.create!(body: data["message"]))
  end
end