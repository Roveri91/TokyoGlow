class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy ]

  def index
    @events = policy_scope(Event).all
    if params[:query].present?
      @events = Event.search_by_title_and_content_and_location_and_date(params[:query])
    end
  end

  def show
    @event = Event.find(params[:id])
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
      redirect_to event_path(@event), notice: 'Event was successfully created.'
    # else
    #   render :new
    end
  end

  def update
    @event = Event.find(params[:id])
    if params[:event][:status] == 'accepted' && @event.update(status: 1)
      redirect_to @event
    elsif params[:event][:status] == 'rejected' && @event.update(status: 2)
      redirect_to @event
    # else
    # render notice: 'Event was successfully updated.'
        # if @event.update(event_params)
    end
  end

  def edit
    authorize @event
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path, notice: "Event was succesfully deleted."
  end

  def pending?
    status == 'pending'
  end

  def attend_event
    event = Event.find(params[:id])
    event.increment!(:attendees_count)
    redirect_to event_path(@event)
  end

  private

  def set_event
    @event = Event.find(params[:id])
    authorize @event
  end

  def event_params
    params.require(:event).permit(:status, :title, :content, :date, :location, :time, :photo)
  end
end
