class AppointmentsController < ApplicationController
  before_action :set_hospital, only: [:new, :create]
  
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.hospital_id = @hospital.id # booking's job id is equal to the job id
    @appointment.user = current_user
    @appointment.save
    redirect_to home
  end

   private

  def appointment_params
    params.require(:appointment).permit(:date, :time, :notes, :purpose, :title)
  end

  def set_hospital
    @hospital = Hospital.find(params[:hospital_id])
  end
end
