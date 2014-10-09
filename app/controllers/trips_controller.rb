class TripsController < ApplicationController

  # before_action :check_login
  
  def new
    @trip = Trip.new
  end

  def create    
    trip = Trip.new trip_params
    trip.user_id = @current_user.id
    trip.save   
    redirect_to trip 
  end

  def index
    # Current user's school list 
    @school_list = []
    @current_user.kids.each do |kid|
      @school_list << kid.school.id
    end

    # Trips that go to your school
    @trips = []
    @school_list.each do |school|
      Trip.all.each do |trip|
        if trip.school_id == school
          @trips << trip
        end
      end
    end

  end
  
  def show
    @trip = Trip.find params[:id]
  end

  def edit
    @trip = Trip.find params[:id]
  end

  def update
    trip = Trip.find params[:id]
    trip.update trip_params
    redirect_to trip
  end 

  def destroy
    trip = Trip.find params[:id]
    trip.delete
    redirect_to '/trips'
  end

  def book
    trip = Trip.find params[:trip_id]
    kid = Kid.find params[:kid_id]
    trip.kids << kid
    trip.save
    redirect_to trip
  end

  def unbook
    kid = Kid.find params[:kid_id]      # Find kid in the trip.kids array
    trip = Trip.find params[:trip_id]
    trip.kids.delete(kid)
    redirect_to trip
  end

  private
  def trip_params
    params.require(:trip).permit(:seats_available, :direction, :user_id, :school_id, :desired_start_time, :date, :comments => [])
  end
end
