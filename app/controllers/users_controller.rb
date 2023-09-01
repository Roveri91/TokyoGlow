class UsersController < ApplicationController
  before_action :set_profile

  def show
    authorize @profile
    weeks_until_birth
    current_week
    week_info = YAML.load_file(Rails.root.join('config', 'week_info.yml'))
    # raise
    if weeks_until_birth.zero?
      info = week_info['default']
      @size = info['size']
      @length = info['length']
      @weight = info['weight']
      @image = info['image']
      @symptoms = info['symptoms']
      @baby_info = info['baby_info']
      @next_appointment = info['next_appointment']
    elsif week_info.key?(@current_week)
      info = week_info[@current_week]
      @size = info['size']
      @length = info['length']
      @weight = info['weight']
      @image = info['image']
      @symptoms = info['symptoms']
      @baby_info = info['baby_info']
      @next_appointment = info['next_appointment']
      # Week number not found in week_info hash
    end
    @articles = Article.all
    @article = @articles.sample
    @events = Event.all
    @event = @events.sample
  end

  def calendar
    authorize @profile

    if params[:date]
      date = params[:date]
    else
      date = Date.today.strftime("%Y-%m-%d")
    end
    # @current_day_appointments = Appointment.where(user: current_user, date: date)
    @appointments = Appointment.where(user: current_user)
    @current_day_events = Event.where(user: current_user, date: date)
    @events = Event.where(user: current_user)
    @attending = Event.joins(:attendants).where('attendants.user_id' => current_user.id, 'attendants.status' => 1)
    # @attending = Attendant.where(current_user.attendants.status == "attending", event != current_user) 
    @events_attending_not_created = current_user.attendants.select { |a| a.event.user != current_user && a.status == "attending" }
    # @events_attending_not_created_today =  @events_attending_not_created.select { |a| a.event.date == date}
    # year = Date.parse(date).year       WILL NEED THIS FOR EVENTS
    # month = Date.parse(date).month
    unless current_user.appointments.empty?
      @hospitals = current_user.appointments.map do |appointment|
        appointment.hospital
      end.uniq
    end
  end

  def weeks_until_birth
    @weeks = ((@profile.due_date - Date.today) / 7).to_i
  end

  def current_week
    @current_week = (40 - (weeks_until_birth))
  end

  private

  def set_profile
     @profile = current_user
  end
end
# if week_info.key == @weeks
  #

# NEED LATER
# link for the google calendar
# <a href="http://www.google.com/calendar/event?action=TEMPLATE&text=[event-title]&dates=[start-custom format='Ymd\\THi00\\Z']/[end-custom format='Ymd\\THi00\\Z']&details=[description]&location=[location]&trp=false&sprop=&sprop=name:" target="_blank" rel="nofollow">Add to my calendar</a>


#
# https://support.google.com/calendar/answer/41207?hl=en&ref_topic=10510447&sjid=16995394533718824250-AP
