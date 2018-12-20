class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(permit)
    @msg = if user.save
             'Salvo com sucesso!'
           else
             user.errors.messages
           end
  end

private

  def permit
    params['user'].permit(:name, :cpf, :address, :level, :class_code, :password, :password_confirmation)
  end
end
