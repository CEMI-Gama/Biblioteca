class Book < ApplicationRecord
  REGISTER_UNIQUE = 'Insira um código de barras que não foi' + \
                    ' cadastrado anteriormente'.freeze
  validates :title, presence: { message: 'Preencha o campo' }
  validates :author, presence: { message: 'Preencha o campo' }
  validates :publishing_company, presence: { message: 'Preencha o campo' }
  validates :year, presence: { message: 'Preencha o campo' }
  validates :category, presence: { message: 'Preencha o campo' }
  validates :bar_code, presence: { message: 'Preencha o campo' }
  validates :bar_code, uniqueness: { message: REGISTER_UNIQUE }
  validates :source_of_donation, presence: { message: 'Preencha o campo' }
  validates :amount, presence: { message: 'Preencha o campo' }

  validate :bar_code_needs_thirteen_numbers

  def bar_code_needs_thirteen_numbers
    return if bar_code.nil?

    return if bar_code.size == 13

    errors.add(:bar_code, 'Código de Barras inválido')
  end
end
