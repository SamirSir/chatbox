class MessagesController < ApplicationController
  def create
  	@message = Message.new(msg_params)
  	@message.user = current_user
  	@message.save
  	redirect_to root_path
  end


  private

  def msg_params
  	params.require(:message).permit(:body)
  end

end
