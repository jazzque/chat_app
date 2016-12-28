class MainChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "main_chat_channel"
  end

  # def unsubscribed
  #   binding.pry
  # end
  # def received(data)
  #   binding.pry
  #   ActionCable.server.broadcast("main_chat_channel", data)
  # end

  def send_message(data)
    Message.create!(body: data["message"])
  end
end