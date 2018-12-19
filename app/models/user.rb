class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  # : {message: 'Nome deve ser'}
end
