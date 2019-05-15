class Book < ApplicationRecord
  validates :title, presence: { message: 'Preencha o campo' }
  validates :author, presence: { message: 'Preencha o campo' }
  validates :publishing_company, presence: { message: 'Preencha o campo' }
  validates :year, presence: { message: 'Preencha o campo' }
  validates :category, presence: { message: 'Preencha o campo' }
  validates :bar_code, presence: { message: 'Preencha o campo' }
  validates :bar_code, uniqueness: { message: 'Insira outro código de barra' }
  validates :source_of_donation, presence: { message: 'Preencha o campo' }
  validates :amount, presence: { message: 'Preencha o campo' }
end
