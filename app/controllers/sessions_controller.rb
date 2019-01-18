class SessionsController < ApplicationController
  def new
    # Nothing to do
  end

  def create
    user = User.find_by(cpf: params[:login][:cpf])
    if user
      if user.authenticate(params[:login][:password])
        logged_in(user)
      else
        error_message('CPF ou senha inválidos, tente novamente.')
      end
    else
      error_message('Usuário não existe')
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to sessions_new_path, notice: 'Logged out!'
  end

  private

  def error_message(msg)
    flash.now.alert = msg
    render :new
  end

  def logged_in(user)
    session[:user_id] = user.id.to_s
    redirect_to pages_secret_path, notice: 'Successfully logged in!'
  end
end
