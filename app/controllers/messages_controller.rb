class MessagesController < ApplicationController

  before_action :get_message, only: [:update, :destroy]

  def index
    render json: Message.all
  end

  def show
    render json: Message.where(:id => params[:id])
  end

  def create
    @message = Message.find_or_create_by(:title => message_params[:title], :content => message_params[:content], :is_hint => message_params[:is_hint], :tags => message_params[:tags])
    render json: @message
  end

  def update
    @message.update_attributes(:title => message_params[:title], :content => message_params[:content], :is_hint => message_params[:is_hint], :tags => message_params[:tags])
    render json: @message
  end

  def destroy
    @message.delete
    render status: 200
  end

  private

  def get_message
    @message = Message.find_by(:title => message_params[:title], :content => message_params[:content], :is_hint => message_params[:is_hint], :tags => message_params[:tags])
  end

  def message_params
    params.require(:message).permit(:title, :content, :is_hint, :tags => [])
  end

end
