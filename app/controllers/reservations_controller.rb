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
    @total_days = params[:reservation][:departure_date].to_i - params[:reservation][:arrival_date].to_i + 1
    # Methode calul du prix total
    @total_price = (@total_days * @desk.price_per_day) + 3
    @reservation.total_price = @total_price
    respond_to do |format|
      if @reservation.save
        format.html { redirect_to user_reservations_path, notice: 'Thank you for your booking ! Your reservation is pending. You will receive an email in the next 24h to confirm your reservation !' }
      else
        format.html { render :new }
      end
    end
  end

  # private

  def reservation_params
    params.require(:reservation).permit(:arrival_date, :departure_date, :status)
  end
end
