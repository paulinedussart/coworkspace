class Owner::ReservationsController < Owner::BaseController

  def index
    @reservations = []
    @space = current_owner.spaces.first
    @space.desks.each do |desk|
      desk.reservations.each do |reservation|
        @reservations << reservation
      end
    end
  end

  def edit
  end

  def accept
    @reservation = Reservation.find(params[:id])
    @reservation.status = "ACCEPTED"
    @reservation.save
    redirect_to owner_space_reservations_path(current_owner, :space_id)
  end

  def decline
    @reservation = Reservation.find(params[:id])
    @reservation.status = "DECLINED"
    @reservation.save
    redirect_to owner_space_reservations_path(current_owner, :space_id)
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:total_price, :arrival_date, :departure_date, :status)
  end
end
