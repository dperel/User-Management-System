class UsersController < ApplicationController

  def welcome
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    binding.pry
    if @user.save
      render "show"
    else
      flash[:notice] = "Could not create user account. Make sure emails match."
      redirect_to :back
    end
  end

  def update
    @user = current_user
    @user.update(user_params) #need better error handling here - if error is not nil?
    if @user.save
      render "show"
    else
      flash[:notice] = "Could not create user account. Make sure emails match."
      render "show"
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
    params.require(:user).permit(:name, :city, :country, :age, :email, :email_confirmation, :bio, :online_portfolio, :accept_terms
    )
  end

end
