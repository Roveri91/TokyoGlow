class HospitalsController < ApplicationController
  before_action :set_hospital, only: %i[show]

  def index
    @hospitals = Hospital.all
  end

  def show
    authorize @hospital
  end

  private

  def set_hospital
    @hospital = Hospital.find(params[:id])
  end

  # def hospital_params
  # params.require(:hospital).permit(:name)
  # end
end
