class PagesController < ApplicationController
  def index
  end

  def home
    @listings = Listing.all
  end

  def bootstrap
  end
end



