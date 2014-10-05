class TripsController < ApplicationController
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
    @trips = Trip.all
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
    redirect_to trips
  end

  private
  def trip_params
    params.require(:trip).permit(:seats_avaliable, :user_id, :school_id, :car_desc, :desired_start_time, :date)
  end
end
