class SchoolsController < ApplicationController
  def new
    @school = School.new
  end

  def create
    school = School.new school_params
    school.save   
    redirect_to school 
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
    redirect_to school
  end 

  def destroy
    school = school.find params[:id]
    school.delete
    redirect_to schools
  end

  private
  def school_params
    params.require(:school).permit(:name, :street_address, :suburb, :postcode, :start_time, :finish_time)
  end
end
