class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    # @review = Review.new
  end

  def edit
  end

  def create
    if @current_user
      review = Review.create review_params
      listing = Listing.find params[:listing_id]
      listing.reviews << review
      @current_user.reviews << review
      redirect_to listing
    end
  end

  def show
    @review = Review.find params[:id]

  end

  private
  def review_params
    params.require(:review).permit(:user_review, :rating)
  end
end