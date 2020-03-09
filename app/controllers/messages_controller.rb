class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    @event = Event.find(params[:event_id])
    @message.event = @event
    @message.user = current_user
    authorize @message
    if @message.save
      redirect_to event_path(@event)
    else
      render "event/show"
    end
  end


  private
  def message_params
    params.require(:message).permit(:content)
  end
end
 