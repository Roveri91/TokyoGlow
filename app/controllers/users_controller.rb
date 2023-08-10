class UsersController < ApplicationController
  before_action :set_profile

  def show
    authorize @profile
  end

  def calendar
    authorize @profile
  end

  private

  def set_profile
     @profile = current_user
  end
end


# NEED LATER
# link for the google calendar 
# <a href="http://www.google.com/calendar/event?action=TEMPLATE&text=[event-title]&dates=[start-custom format='Ymd\\THi00\\Z']/[end-custom format='Ymd\\THi00\\Z']&details=[description]&location=[location]&trp=false&sprop=&sprop=name:" target="_blank" rel="nofollow">Add to my calendar</a>


# 
# https://support.google.com/calendar/answer/41207?hl=en&ref_topic=10510447&sjid=16995394533718824250-AP