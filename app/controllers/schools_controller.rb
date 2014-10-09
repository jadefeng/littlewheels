class SchoolsController < ApplicationController

  # before_action :check_login

  def new
    @school = School.new
  end

  def create
  @school = School.new school_params
  @school.map_address = @school.name.to_s + ', ' + @school.street_address.to_s + ', ' + @school.suburb.to_s + ', ' + @school.postcode.to_s
  @school.save   
  redirect_to schools_path
  end

  def index
    @schools = School.all
  end
  
  def show
    @school = School.find params[:id]
  end

  def edit
    @school = School.find params[:id]
  end

  def update
    school = School.find params[:id]
    school.update school_params
    school.map_address = school.name.to_s + ', ' + school.street_address.to_s + ', ' + school.suburb.to_s + ', ' + school.postcode.to_s
    school.save
    redirect_to school
  end 

  def destroy
    school = school.find params[:id]
    school.delete
    redirect_to schools
  end

  private
  def school_params
    params.require(:school).permit(:name, :image, :street_address, :suburb, :postcode, :state, :start_time, :finish_time, :map_address)
  end
end
