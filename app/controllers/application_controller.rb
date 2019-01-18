class ApplicationController < ActionController::Base
  helper_method :current_user
  # Define the current_user method:
  def current_user
    # Look up the current user based on user_id in the session cookie:
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    return unless current_user.nil?

    redirect_to sessions_new_path, alert: 'You must be logged in to access this
    page.'
  end
end
