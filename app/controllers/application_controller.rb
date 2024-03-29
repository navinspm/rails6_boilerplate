class ApplicationController < ActionController::Base
  include PublicActivity::StoreController
  include ApplicationHelper
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_current_user, if: :current_user

  def set_current_user
    @user = current_user
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
      keys: [:username, :name, :email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in,
      keys: [:login, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:account_update,
      keys: [:username, :name, :email, :password_confirmation, :current_password])
  end
end
