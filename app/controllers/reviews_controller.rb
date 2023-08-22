class ReviewsController < ApplicationController
  before_action :set_hospital, only: %i[create]
  # def new
  #   @hospital = Hosptial.find(params[:hospital_id])
  #   @review = Review.new
  # end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.hospital = @hospital
    authorize @review
    if @review.save
      redirect_to hospital_path(@hospital)
    else
      # redirect_to hospital_path(@hospital)
      render "hospitals/show", status: :unprocessable_entity
    end
  end

  private

  def set_hospital
    @hospital = Hospital.find(params[:hospital_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating, :title)
  end
end
