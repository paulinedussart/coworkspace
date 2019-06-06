class ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations
    # @reservation.desk = @desk
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  # def create
  #   @reservation = current_user.reservation.build(reservation_params)
  #   @desk =
  #   @reservation.desk = @desk
  #   @reservation.status = "Pending"
  # end


  # private

  # params.require(:reservation).permit(:arrival_date, :departure_date, :status)
end
