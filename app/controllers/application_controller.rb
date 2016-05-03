class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_filter :set_global_search_variable

  def set_global_search_variable
    @q = App.ransack(params[:q])
    @apps = @q.result.order("apps.app_priority ASC")
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation)}
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password, :password_confirmation)}
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password)}
  end
end
