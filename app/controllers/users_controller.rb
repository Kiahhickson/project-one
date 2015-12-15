class UsersController < ApplicationController
  def index
    # Get all of the users, and show them on the page
    @users = User.all
  end

  def new
    @user = User.new

  end

   def create
    @user = User.new user_params
    if @user.save
      redirect_to(root_path)
    else
      render :new
    end
  end

  def edit
  end

  def show
    # Find the particular user from params[:id]
    @user = User.find params[:id]
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end



