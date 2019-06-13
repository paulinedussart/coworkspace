class PagesController < ApplicationController
  def home
  end

  def dashboard
    @owner = current_owner
    @pending = Reservation.where(status:"PENDING").count
  end
end
