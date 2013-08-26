class MessagesController < ApplicationController
  def index
    @messages = Message.order('created_at DESC')
  end

  def create
    @message = Message.create!(params[:message])
    PrivatePub.publish_to("/messages/new", message: @message)
  end
end
