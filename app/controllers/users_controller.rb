class UsersController < ApplicationController
  before_action :authorize, except: %i[create new]
  before_action :admin?, only: %i[editadm]
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def editadm
    @user = User.find_by(id: params['id'])
  end

  def show
    @user = User.find_by(id: params['id'])
  end

  def create
    user = User.new(permit)
    if user.save
      flash[:notice] = 'Criado com Sucesso!'
      redirect_to root_path
    else
      @msg = user.errors.messages
      flash.now.alert = @msg
      @user = User.new
      render :new
    end
  end

  def edit
    if current_user.id.to_s == params[:id]
      @user= User.find_by(id: params['id'])
    else
      redirect_to root_path, alert: 'BlaBlaBla'
    end
    @user = User.find_by(id: params['id'])
  end

  def update
    @user = User.find_by(id: params['id'])
    if @user.update_attributes(permit)
      redirect_to pages_secret_path, notice: 'Alterado com sucesso!'
    else
      flash.now.alert = @user.errors.messages
      render :edit
    end
  end

  private

  def permit
    params['user'].permit(:name, :cpf, :address,
                          :register, :level, :class_code,
                          :password, :password_confirmation)
  end

  def user_params
    params.require('user').permit(:name, :cpf, :address,
                                  :register, :level, :class_code,
                                  :password, :password_confirmation)
  end
end
