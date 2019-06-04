class SpacesController < ApplicationController
  def index
    @spaces = Space.where.not(latitude: nil, longitude: nil)

    @markers = @spaces.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { space: space })
      }
    end
  end
end
