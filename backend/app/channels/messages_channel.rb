class MessagesChannel < ApplicationCable::Channel
  def subscribed
    # puts 'hit'
    conversation = Conversations.find(params[:conversation])
    stream_for conversation 
  end

  # def received(data)
  #   conversation = Conversations.find(params[:conversation])
  #   MessagesChannel.broadcast_to(channel, {id: id, text: text})
  # end


  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
