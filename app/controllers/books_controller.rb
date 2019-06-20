class BooksController < ApplicationController
  before_action :admin?, only: %i[edit new create update]
  require 'barby'
  require 'barby/barcode/ean_13'
  require 'barby/outputter/html_outputter'

  def new
    @book = Book.new
  end

  def index
    @books = Book.all
  end

  def edit
    @book = Book.find_by(id: params['id'])
  end

  def show
    @book = Book.find_by(id: params['id'])
    @barcode = Barby::EAN13.new('000000000000')
    @barcode_for_html = Barby::HtmlOutputter.new(@barcode)
  end

  def create
    book = Book.new(permit)
    if book.save
      flash[:notice] = 'Cadastrado com Sucesso!'
      redirect_to root_path
    else
      @msg = book.errors.messages
      flash.now.alert = 'Não foi possível cadastrar.'
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
                                  :year, :category,
                                  :source_of_donation, :amount)
  end
end
