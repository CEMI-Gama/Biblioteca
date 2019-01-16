class ApplicationController < ActionController::Base
   helper_method :current_user
  
  # Define the current_user method:
  def current_user
    # Look up the current user based on user_id in the session cookie:
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

   def authorize
      redirect_to root_path, alert: 'You must be logged in to access this page.' if current_user.nil?
    end
end
