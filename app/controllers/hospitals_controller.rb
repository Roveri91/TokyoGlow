class HospitalsController < ApplicationController
  #pundit
  before_action :set_hospital, only: %i[ show ]
  skip_before_action :authenticate_user!, only: :index
  # skip_after_action :verify_authorized, only: :index

  def index
    @user = current_user
    @hospitals = policy_scope(Hospital).all
    if params[:query].present?
      query = params[:query].strip.downcase
      @hospitals = @hospitals.where(
        "lower(name) LIKE :query OR lower(address) LIKE :query OR lower(services) LIKE :query OR lower(description) LIKE :query",
        query: "%#{query}%"
      )
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
