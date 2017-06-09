class ReservationsController < ApplicationController


  def new
    @renters = Renter.all.map{ |r| [r.name, r.id] }
    # @all_bikes = Bike.all
    # @bikes = []
    # @all_bikes.each do |bike|
    #   if bike.is_available == true
    #     @bikes << bike
    #   end
    # end
    # binding.pry
    @bikes = Bike.all.map{ |b| [b.bike_type, b.id, b.is_available] }
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      flash[:success] = 'Reservation Added'
      redirect_to renter_path(@reservation.renter_id)
    else
      render :new
    end

  end



  def destroy
    reservation = Reservation.find(params[:id])
    reservation.destroy
    flash[:sucess] = 'Reservation Removed'
    redirect_to renter_path(reservation.renter_id)

  end

  private
  def reservation_params
    params.require(:reservation).permit(:renter_id, :bike_id)

  end
end
