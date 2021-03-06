class SpacesController < ApplicationController

  def index
    if params[:query].present?
      @spaces = Space
        .search_by_name_and_description_and_address(params[:query])
        .where.not(latitude: nil, longitude: nil)
        .available_spaces(params[:arrival_date])
    else
      @spaces = Space.where.not(latitude: nil, longitude: nil).available_spaces(params[:arrival_date])
    end

    @markers = @spaces.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude,
        infoWindow: render_to_string(partial: "shared/infowindow", locals: { space: space })
      }
    end
  end

  def show
    @space = Space.find(params[:id])
    # @desk = Desk.find(params[:desk_id])
    # @space.desk = @desk
    @markers = []
    @markers << {
      lat: @space.latitude,
      lng: @space.longitude
    }
    @user = current_user
    @review = Review.new
    @reservation = Reservation.new
    @desk = Desk.new
    @desk = @space.desks.first
  end

  def new
    @space = Space.new
  end

  def create
    @space = current_owner.spaces.build(space_params)
    respond_to do |format|
      if @space.save!
        format.html { redirect_to root_path, notice: 'Space was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

private

  def space_params
    params.require(:space).permit(:name, :description, :phone, :address, :opening_hours, :website, :photo)
  end

  #  # METHODE POUR AFFICHER LES ESPACES AVEC AU MOINS 1 BUREAU DISPONIBLE
  #    # afficher space quand il dispose dau moins 1 desk disponible
  # def available?(desk)
  #   if (params[:arrival_date] !="" && params[:departure_date] !="")
  #       # definir les dates de séjours du user
  #       user_reservation = params(:arrival_date)..params(:departure_date)
  #       # Iterer sur chaque bureau pour verifier si la dates est disponible

  #       desks.each do |reservation|
  #         space_available =
  #       end
  #   end
  # end

  # def available?(desk)
  #   available = true
  #   if (params[:arrival_date] !=“” && params[:departure_date] !=“”)
  #     period_book_by_user = params[:arrival_date].to_date..params[:departure_date].to_date
  #     desk.reservations.each do |reservation|
  #       non_available_period = reservation.arrival_date..reservation.departure_date
  #       period_book_by_user.each do |day|
  #         available += 1 if non_available_period.include?(day)
  #       end
  #     end
  #   end
  #   available > 0 ? true : false
  # end

  # def available?(desk)
  #   desired_dates = params[:arrival_date].to_date..params[:departure_date].to_date
  #   desk.reservations.where.not("arrival_date >= ?", params[:arrival_date].to_date)
  # end
end
