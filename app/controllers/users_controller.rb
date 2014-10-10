# if Rails.env.development?
#   require 'openssl'
#   OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
# end

class UsersController < ApplicationController

  # before_action :check_login

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    @user.username.downcase!         # Ensuring the username is not case-sensitive
    @user.map_address = @user.street_address.to_s + ', ' + @user.suburb.to_s + ', ' + @user.postcode.to_s
    

    @result = Geocoder.search(@user.map_address).first
    @user.user_latitude = @result.latitude
    @user.user_latitude = @result.longitude

    if @user.save     # => true
      # here the user is valid
      session[:user_id] = @user.id
      redirect_to user_path(@user)   # back to the home page!
    else
      # here the user is invalid
      render :new         # reloads the page with everything they saved in @user already! :O
    end
  end

  def index
    # Users that have kids who go to your school
    @school_list = []
    @current_user.kids.each do |kid|
      @school_list << kid.school.id
    end
    @school_list.uniq!

    # Users that have kids who go to your school 
    @users = []
    @school_list.each do |school_id|
      User.all.each do |user|
        user.kids.each do |kid|
          if kid.school_id == school_id
            @users << user
          end
        end
      end
    end
  end  

  def show
    @user = User.find params[:id]
    @school_list = []
    @user.kids.each do |kid|
      school_name = kid.school.name
      @school_list << school_name
    end
    @result = Geocoder.search(@user.map_address).first

  end

  def edit
    @user = @current_user
  end

  def update
    user = @current_user
    # raise params.inspect

    user.update user_params
    user.map_address = user.street_address.to_s + ', ' + user.suburb.to_s + ', ' + user.postcode.to_s

    @result = Geocoder.search(user.map_address).first
    user.user_latitude = @result.latitude
    user.user_latitude = @result.longitude
    
    user.save

    redirect_to user
  end

  def destroy
    user = @current_user
    user.delete
    redirect_to root
  end

  private
  def user_params
    params.require(:user).permit(:username, :avatar, :car_avatar, :first_name, :last_name, :email, :facebook, :twitter, :image, :password, :password_confirmation, :image, :phone_number, :family_description, :street_address, :suburb, :postcode, :state, :car_brand, :car_model, :car_image, :map_address)
  end
end