class KidsController < ApplicationController
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
    @kids = Kid.all
  end
  
  def show
    @kid = Kid.find params[:id]
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
    redirect_to kids
  end

  private
  def kid_params
    params.require(:kid).permit(:name, :dob, :gender, :image, :description, :user_id)
  end
end