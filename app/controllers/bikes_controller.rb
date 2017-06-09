class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit, :destroy, :update]


  def index
    @bikes = Bike.all
  end

  def show
  end

  def new
    @bike = Bike.new
  end

  def edit
    
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      redirect_to bikes_path, notice: 'Bike Created'
    else
      render :new
    end
  end

  def update
    if @bike.update(bike_params)
      redirect_to bikes_path, notice: 'Bike was updated'
    else
      render :edit
    end
  end

  def destroy
    @bike.destroy
    redirect_to bikes_path, notice: 'Bike Destroyed'

  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:bike_type, :bike_size, :pedal_type)
  end


end
