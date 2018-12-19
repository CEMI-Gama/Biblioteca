class User < ApplicationRecord
  validates :name, presence: true
  # : {message: 'Nome deve ser'}
end
