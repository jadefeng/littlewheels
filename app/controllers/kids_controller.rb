class KidsController < ApplicationController

  before_action :check_login

  def new
    @kid = Kid.new
  end

  def create
    kid = Kid.new kid_params
    kid.user_id = @current_user.id
    kid.save   
    redirect_to kid 
  end

  def index
    # List of schools user is part of
    @school_list = []
    @current_user.kids.each do |kid|
      @school_list << kid.school.id
    end  

    @kids = []
    @school_list.each do |school_id|
        Kid.all.each do |kid|
          if kid.school_id == school_id
            @kids << kid
          end
        end
      end
  end
  
  def show
    # Kids that belong to parents that are showed to you

    @kid = Kid.find params[:id]
    @result = Geocoder.search(@kid.user.map_address).first

  end

  def edit
    @kid = Kid.find params[:id]
  end

  def update
    kid = Kid.find params[:id]
    kid.update kid_params
    redirect_to kid
  end 

  def destroy
    kid = Kid.find params[:id]
    kid.delete
    redirect_to kids_path
  end

  private
  def kid_params
    params.require(:kid).permit(:first_name, :last_name, :dob, :gender, :image, :description, :user_id, :school_id)
  end
end