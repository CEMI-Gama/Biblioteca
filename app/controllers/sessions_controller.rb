class SessionsController < ApplicationController
	def new
  	end

  	def create
    user = User.find_by(email: params[:register][:cpf].downcase)

    	if user && user.authenticate(params[:login][:password]) 

      session[:user_id] = user.id.to_s
      redirect_to root_path, notice: 'Successfully logged in!'
    	else
      
      flash.now.alert = "Incorrect email or password, try again."
      render :new
    	end
 	 end

  	def destroy
    	session.delete(:user_id)
    	redirect_to login_path, notice: "Logged out!"
  	end
end
