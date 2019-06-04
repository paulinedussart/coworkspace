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
  end

  def new
    @space = Space.new
  end

  def create
  end
end
