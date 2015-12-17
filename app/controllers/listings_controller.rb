class ListingsController < ApplicationController
  def index
    @listings = Listing.all
    @listings = @current_user.listings
  end

  def new
    @listing = Listing.new
  end

  def create
    listing = Listing.create listing_params
    @current_user.listings << listing
    redirect_to user_path(@current_user)
  end


  def edit
    @listing = Listing.find params[:id]
    redirect_to root_path unless @listing.user == @current_user
  end

  def update
   listing = Listing.find params[:id]
   redirect_to root_path unless listing.user == @current_user
   listing.update listing_params
   redirect_to listing_path
  end

  def show
    @listing = Listing.find params[:id]
  end

  def destroy
    listing = Listing.find params[:id]
    listing.destroy
    redirect_to listings_path
  end

  private 
  def listing_params
    params.require(:listing).permit(:home_type, :room_type, :accommodates, :address, :title, :price, :bedrooms, :beds, :bathrooms, :description, :hero_picture)
  end
end
