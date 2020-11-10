class BookingsController < ApplicationController
  
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.surfboard = @surfboard

    if @booking.save
      redirect_to surfboard_path(@surfboard)
    else
      render :new
  end
end

def destroy
  @booking = Booking.find(params[:id])
  @booking.destroy
  redirect_to surfboard_path(@booking.surfboard), alert: 'bookig canceled'
    private

  def set_surfboard
    @surfboard = Surfboard.find(params[:surfboard_id])
  end

  def booking_params
    params.require(:booking).permit(:description, :booking_id)
  end

end
