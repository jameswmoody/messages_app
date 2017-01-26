class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @user = User.find(current_user)
    @message = @user.messages.create(message_params)
    if @message.save
      redirect_to '/messages'
    else
      render 'new'
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    redirect_to messages_path
  end

  private
  def message_params
    params.require(:message).permit(:content)
  end
end
