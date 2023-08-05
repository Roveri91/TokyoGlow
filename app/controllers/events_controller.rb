class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy ]

  def index
    @events = policy_scope(Event).all
  end

  def show
    authorize @event
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user

    authorize @event

    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    # else
    # render
    end
  end

  def update
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully updated.'
    # else
    # render
    end
  end

  def edit
    authorize @event
  end

  def destroy
    @event.destroy
    redirect_to @events_url, notice: "Event was succesfully deleted."
  end

  private

  def set_event
    @event = Event.find(params[:id])
    authorize @event
  end

  def event_params
    params.require(:event).permit(:title, :content, :date, :location, :time)
  end
end
