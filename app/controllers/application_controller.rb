class ApplicationController < ActionController::Base
  helper_method :current_user
  # Define the current_user method:
  def current_user

    # Look up the current user based on user_id in the session cookie:
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    return unless current_user.nil?

    redirect_to sessions_new_path, alert: 'Você precisa estar logado para entrar
    nesta página.'
  end

  def admin?
    return unless current_user.level == 1
    layout 'admin'
    redirect_to root_path, alert: 'Permissão insuficiente'
  end
end
