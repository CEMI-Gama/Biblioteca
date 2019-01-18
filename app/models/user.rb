class User < ApplicationRecord
  has_secure_password
  REGISTER_UNIQUE = 'Insira uma matrícula que não foi' + \
                    ' cadastrada anteriormente'.freeze
  validates :name, presence: { message: 'Preencha o campo' }
  validates :class_code, presence: { message: 'Preencha o campo' }
  validates :register, presence: { message: 'Preencha o campo' }
  validates :register, uniqueness: { message: REGISTER_UNIQUE }
  validates :cpf, presence: { message: 'Preencha o campo' }
  validates :cpf, cpf: { message: 'Insira um CPF válido' }
  validates :cpf, uniqueness: { message: 'Não insira um CPF repetido...' }
  validates :address, presence: { message: 'Preencha o campo' }
  validates :level, presence: { message: 'Preencha o campo' }

  validate :class_code_needs_a_number_and_a_caracter

  def class_code_needs_a_number_and_a_caracter
    return if class_code.nil?

    return if class_code.size == 2

    errors.add(:class_code, 'Ano e turma inválidos')
  end
end
