class ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = current_user.reservations.build(reservation_params)
    @desk = Desk.find(params[:desk_id])
    @reservation.desk = @desk
    @reservation.status = "PENDING"

    # Methode calul du prix total
    @total_days = params[:reservation][:departure_date].to_i - params[:reservation][:departure_date].to_i + 1
    # Methode calul du prix total
    @total_price = (@total_days * @desk.price_per_day.to_i) + 3
    @reservation.total_price = @total_price
    respond_to do |format|
      if @reservation.save
        format.html { redirect_to reservation_paiement_path(@reservation), notice: 'Thank you for your booking !' }
      else
        format.html { render :new }
      end
    end
  end

  def paiement
    # redirect_to user_reservations_path
  end

  # private

  def reservation_params
    params.require(:reservation).permit(:arrival_date, :departure_date, :status)
  end
end
