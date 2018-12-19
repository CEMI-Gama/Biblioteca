class UsersController < ApplicationController
  def new
  	@User = User.new
  	
  end
 def create
    user = User.new(permit)
    if user.save
      @msg = "Salvo com sucesso!"
    else
      @msg = user.errors.messages
    end
  end

private 

  def permit
    params['user'].permit(:name, :cpf, :address, :level, :class_code, :password, :password_confirmation)
  end
end