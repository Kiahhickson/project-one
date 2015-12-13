class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def new
  end

  def edit
  end

  def show
    @listing = Listings.find params[:id]
  end
end



