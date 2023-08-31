class AppointmentsController < ApplicationController
  before_action :set_hospital, only: [:new, :create]
  
  def new
    @appointment = Appointment.new
    @time_options = generate_time_options
    authorize @appointment
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.hospital_id = @hospital.id # booking's job id is equal to the job id
    authorize @appointment
    @appointment.user = current_user
    @appointment.save
    redirect_to calendar_path(:id)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :time, :notes, :purpose, :title)
  end

  def set_hospital
    @hospital = Hospital.find(params[:hospital_id])
  end

  def generate_time_options
    time_options = []
    start_time = Time.new(2000, 1, 1, 9, 0, 0).to_time
    end_time = Time.new(2000, 1, 1, 19, 45, 0).to_time

    while start_time <= end_time
      time_options << [start_time.strftime('%H:%M'), start_time.strftime('%H:%M:%S')]
      start_time += 15.minutes
    end

    time_options 
  end
end
