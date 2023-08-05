class HospitalsController < ApplicationController
  #pundit
  before_action :set_hospital, only: %i[ show ]

  def index
    @hospitals = policy_scope(Hospital).all
  end

  def show
    @post = Post.all
    authorize @hospital
  end

  private

  def set_hospital
    @hospital = Hospital.find(params[:id])
    authorize @hospital
  end

  # def hospital_params
  #   params.require(:hospital).permit(:name, :address, :price_range, :services, :description, :average_rating, :phone_number, :webpage)
  # end
end
