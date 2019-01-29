class BooksController < ApplicationController
	def new
		@book = Book.new
	end

  def create
    book = Book.new(permit)
    if book.save
      flash[:notice] = 'Criado com Sucesso!'
      redirect_to root_path
    else
      @msg = book.errors.messages
      flash.now.alert = 'Não foi possível criar.Conta já existente'
      render :new
    end
  end


private

  def permit
    params['book'].permit(:title, :author, :publishing_company, 
    :year, :category, :bar_code, :source_of_donation, :amount)
  end

  def book_params
    params.require('book').permit(:title, :author, :publishing_company, 
                                  :year, :category, :bar_code, :source_of_donation, 
                                  :amount)
  end
end
