class OwnersController < ApplicationController
  layout "ownersession"
  def show
    @owner = current_owner
  end

  private

  def user_params
    params.require(:owner).permit(:name, :phone, :email)
  end
end
