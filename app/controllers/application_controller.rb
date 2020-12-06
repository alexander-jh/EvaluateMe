class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :resource, :resource_name, :resource_class, :devise_mapping
  before_action :update_allowed_parameters, if: :devise_controller?

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def after_sign_in_path_for(resource)
    if resource.admin?
      stored_location_for(resource) || admin_portal_url
    else
      stored_location_for(resource) || portal_url
    end
  end

  protected
  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:Fname, :Lname, :email, :password, :password_confirmation, :admin)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:Fname, :Lname, :email, :password, :current_password)}
  end
end
