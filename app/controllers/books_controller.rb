class BooksController < ApplicationController
  before_action :admin?, only: %i[edit new create update]
  layout 'admin'
  def new
    @book = Book.new
  end

  def index
    @books = Book.all
  end

  def search
    @books = Book.all where find_by(id: params[:title])
  end

  def edit
    @book = Book.find_by(id: params['id'])
  end

  def show
    @book = Book.find_by(id: params['id'])
  end

  def create
    book = Book.new(permit)
    if book.save
      flash[:notice] = 'Cadastrado com Sucesso!'
      redirect_to root_path
    else
      @msg = book.errors.messages
      flash.now.alert = 'Não foi possível cadastrar.'
      new
      render :new
    end
  end

  def update
    @book = Book.find_by(id: params['id'])
    if @book.update_attributes(permit)
      redirect_to pages_secret_path, notice: 'Alterado com sucesso!'
    else
      flash.now.alert = @book.errors.messages
      render :edit
    end
  end

  private

  def permit
    params['book'].permit(:title, :author, :publishing_company, :year)
    params['book'].permit(:category, :bar_code, :source_of_donation, :amount)
  end

  def book_params
    params.require('book').permit(:title, :author, :publishing_company,
                                  :year, :category, :bar_code,
                                  :source_of_donation, :amount)
  end
end
