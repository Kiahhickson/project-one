class UsersController < ApplicationController
  def index
    # Get all of the users, and show them on the page
    @users = User.all
  end

  def new
  end

  def edit
  end

  def show
    # Find the particular user from params[:id]
    @user = User.find params[:id]
  end
end
