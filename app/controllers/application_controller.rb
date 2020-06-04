class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  before_action :configure_devise_parameters, if: :devise_controller?
  respond_to :json
  # before_action :authenticate_user!, notice: 'Vous devez vous connecter pour accéder à ce contenu'
  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u|
    u.permit(
             :first_name,
             :last_name,
             :user_name,
             :email,
             :password,
             :password_confirmation
             )
           }
  end
end