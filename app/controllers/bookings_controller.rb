class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(booking_params)
    @booking.flat_id = @flat.id
    @booking.user_id = current_user.id
    @booking.total_price = (@booking.end_date - @booking.start_date) * @flat.price_per_night
    if @booking.save
      redirect_to account_bookings_path
    else
      render "flats/show"
    end

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
