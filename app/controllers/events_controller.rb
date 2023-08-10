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
      redirect_to @event, notice: 'Event was successfully created.'
    # else
    # render
    end
  end

  def update
    @event = Event.find(params[:id])
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

  def pending?
    status == 'pending'
  end
  private

  def set_event
    @event = Event.find(params[:id])
    authorize @event
  end

  def event_params
    params.require(:event).permit(:status, :title, :content, :date, :location, :time)
  end
end
