class ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations
    # @reservation.desk = @desk
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new

  end

  def create
    @reservation = current_user.reservation.build(reservation_params)
    @desk = Desk.find(params[:desk_id])
    @reservation.desk = @desk
    @reservation.status = "Pending"

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to root_path, notice: 'Thank you for your booking ! Your reservation is pending. You will receive an email in the next 24h to confirm your reservation !' }
      else
        format.html { render :new }
      end
    end
  end


  def status?
    # "pending", "confirm" and "refused"
  end

  # private

  def reservation_params
    params.require(:reservation).permit(:arrival_date, :departure_date, :status)
  end
end
