class ApplicationController < ActionController::Base
  # before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :avatar, :phone])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def current_entity
    current_user || current_owner
  end

    protected

  # def after_sign_in_path_for(resource)
  #   # return the path based on resource
  #   owner_dashboard_path(current_owner.id) if current_owner.present?
  # end
end
