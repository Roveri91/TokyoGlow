class AttendantsController < ApplicationController
  def index
    @attendants = Attendant.all
  end

  def attending?(user, event)
    event.attendants.exists?(user_id: user.id, status: 'attending')
  end

  def update
    @event = Event.find(params[:id])
    @attendant = Attendant.find(params[:attendant_id])
    if params[:attendant][:status] == 'accepted'
      @attendant.attend(current_user)
    elsif params[:attendant][:status] == 'rejected'
      @attendant.unattend(current_user)
    end
    redirect_to @event
  end



  def num_attendees(event)
    event.increment!(:attendees_count)
  end

  def pending?(attendant)
    attendant.status == 'pending'
  end
end
