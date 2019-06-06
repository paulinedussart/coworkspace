class ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations
  end

  def show
    @reservation = Reservation.find(params[:id])
  end
end
