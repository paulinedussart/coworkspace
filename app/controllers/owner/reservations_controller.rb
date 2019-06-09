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

  def update
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to owner_space_reservations_path, notice: 'Reservation was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to desks_url, notice: 'Reservation was successfully destroyed.' }
    end
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:total_price, :arrival_date, :departure_date, :status)
  end
end
