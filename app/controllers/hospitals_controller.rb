class HospitalsController < ApplicationController
  #pundit
  before_action :set_hospital, only: %i[ show ]

  def index
    @hospitals = policy_scope(Hospital).all
    if params[:query].present?
      @events = Event.search_by_name_and_address_and_price_range_and_description(params[:query])
    end
  end

  def show
    @hospital = Hospital.find(params[:id])
    authorize @hospital
    @review = Review.new
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
