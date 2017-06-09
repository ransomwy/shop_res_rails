class ApplicationController < ActionController::Base
before_action :authenticate_renter!
  protect_from_forgery with: :exception
  before_action  :configure_permitted_parameters, if: :devise_controller?
  protected
   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :address, :phone])
   end
end
