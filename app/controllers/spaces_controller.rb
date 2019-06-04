class SpacesController < ApplicationController

  def index
    @spaces = Space.where.not(latitude: nil, longitude: nil)

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
    @markers = []
    @markers << {
      lat: @space.latitude,
      lng: @space.longitude
    }
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

end
