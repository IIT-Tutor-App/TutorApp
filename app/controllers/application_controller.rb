class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :signed_in?

  private

  def current_user
    @current_user ||= Student.find_by(email: session[:user_email])
  end
  
  def signed_in?
    !!current_user
  end
  
  def current_user=(user)
    session[:user_name] = user.name
    session[:user_email] = user.email
  end
end
