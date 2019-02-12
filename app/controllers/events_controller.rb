class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])    
  end

  def create
    @event = Event.new(
    start_date: params[:start_date], 
    title: params[:title],
    description: params[:description],
    price: params[:price],
    location: params[:location],
    admin_id: current_user.id)
    if @event.save
      flash[:success] = "Event créé ! "
      redirect_to event_path(@event.id)
    else
    end
  end
end
