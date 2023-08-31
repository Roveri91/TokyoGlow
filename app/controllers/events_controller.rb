class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy ]

  def index
    @events = policy_scope(Event).all.order(created_at: :desc)
    if params[:query].present?
      @events = Event.search_by_title_and_content_and_location_and_date(params[:query])
    end
    @attending = @events.includes(:attendant).where(attendants: { user: current_user})
  end

  def show
    @event = Event.find(params[:id])
    # @attendant = Attendant.new
    authorize @event
    @attendants = @event.attendants
    @is_attending = @attendants.where(status: 1).exists?(user_id: current_user.id)
  end

  def new
    @event = Event.new
    @time_options = generate_time_options
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

  def edit
    authorize @event
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path, notice: 'Event was succesfully deleted.'
  end

  def status_change
    @event = Event.find(params[:event])
    @attendee = Attendant.find_by user_id: current_user.id, event_id: @event.id

    if @attendee.nil?
      @attendee = Attendant.create(user_id: current_user.id, event_id: @event.id, status: params[:status].to_i)
      # @attendee.save

    else
      @attendee.status = params[:status].to_i
      @attendee.save
    end
    authorize @event
    authorize @attendee unless @attendee.nil? # attending.nil?
    redirect_to event_path(@event)
  end

  def attending_users
    users.where(attendants: { status: 1 })
  end

  def attending?
    @event.attendants.exists?(user_id: user.id, status: 1)
  end

  private

  def set_event
    @event = Event.find(params[:id])
    authorize @event
  end

  def event_params
    params.require(:event).permit(:title, :content, :date, :location, :time, :photo)
  end

  def generate_time_options
    time_options = []
    start_time = Time.new(2000, 1, 1, 0, 0, 0)
    end_time = Time.new(2000, 1, 1, 23, 45, 0)

    while start_time <= end_time
      time_options << [start_time.strftime('%H:%M'), start_time.strftime('%H:%M:%S')]
      start_time += 15.minutes
    end

    time_options
  end
end
