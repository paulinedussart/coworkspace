class PagesController < ApplicationController
  def home
  end

  def dashboard
    @owner = current_owner
  end
end
