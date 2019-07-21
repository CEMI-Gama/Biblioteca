class ApplicationController < ActionController::Base
  helper_method :current_user
  layout :define_layout

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

    redirect_to root_path, alert: 'Permissão insuficiente'
  end

  private

  def define_layout
    if current_user
      'admin'
    else
      'application'
    end
  end
end
