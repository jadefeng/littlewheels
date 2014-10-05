class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save     # => true
      # here the user is valid
      # session[:user_id] = user.id
      @user.map_address = '#{params[:street_address]}, #{params[:suburb]}, #{params[:postcode]}'
      redirect_to root_path   # back to the home page!
    else
      # here the user is invalid
      render :new         # reloads the page with everything they saved in @user already! :O
    end
  end

  def index
    @users = User.all
  end
  
  def show
    @user = User.find params[:id]
  end

  def edit
    @user = @current_user
  end

  def update
    user = @current_user
    user.update user_params
    redirect_to user
  end

  def destroy
    user = @current_user
    user.delete
    redirect_to root
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :image, :password, :password_confirmation, :image, :phone_number, :family_description, :street_address, :suburb, :postcode, :state, :car, :map_address)
  end
end