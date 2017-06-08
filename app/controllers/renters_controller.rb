class RentersController < ApplicationController
  before_action :set_renter, only: [:show, :edit, :update, :destroy]

  def index
    @renters = Renter.all
  end

  def show

  end

  def new
    @renter = Renter.new
  end

  def edit
  end

  def update
    if @renter.update(renter_params)
      redirect_to @renter, notice: 'Renter Updated'
    else
      render :edit
    end

  end

  def destroy
    @renter.destroy
    redirect_to renters_path, notice: 'Renter Destroyed'
  end

  def create
    @renter = Renter.new(renter_params)

    if @renter.save
      redirect_to @renter, notice: 'Renter Created'
    else
      render :new_bike_path
    end

  end


  private

  def set_renter
    @renter = Renter.find(params[:id])
  end

  def renter_params
    params.require(:renter).permit(:name, :address, :phone)

  end
end
