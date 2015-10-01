class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      @users = User.all
      render "index"
    else
      flash[:notice] = "Could not create user account. Make sure emails match."
      redirect_to :back
    end
  end

  def show
    @user = current_user
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :city, :country, :age, :email, :email_confirmation, :bio, :online_portfolio, :terms_of_service)
  end

end
