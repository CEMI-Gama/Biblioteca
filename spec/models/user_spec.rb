require 'rails_helper'

RSpec.describe User, type: :model do
  it 'create valid user' do
  	user = User.create(name: 'Tom', class_code: '3D', register: '498053039', cpf: '42341155847', address: 'sul', level: 0, password:'1234', password_confirmation: '1234')
  	expect(user).to be_valid
  end

  it 'create dont valid user' do
  	user = User.create(name: nil, class_code: '3D', register: '498053039', cpf: '42341155847', address: 'sul', level: 0, password:'1234', password_confirmation: '1234')
  	expect(user).to_not be_valid
  end

  it 'create valid class_code' do
    user = User.create(name: 'Tom', class_code: '3D', register: '498053039', cpf: '42341155847', address: 'sul', level: 0, password:'1234', password_confirmation: '1234')
  	expect(user).to be_valid
  end

  it 'create dont valid class_code' do
  	user = User.create(name: nil, class_code: nil, register: '498053039', cpf: '42341155847', address: 'sul', level: 0, password:'1234', password_confirmation: '1234')
  	expect(user).to_not be_valid
  end

  it 'create dont valid class_code' do
  	user = User.create(name: nil, class_code: '3DD', register: '498053039', cpf: '42341155847', address: 'sul', level: 0, password:'1234', password_confirmation: '1234')
  	expect(user).to_not be_valid
  end

  it 'create dont valid class_code too' do
  	user = User.create(name: nil, class_code: '3', register: '498053039', cpf: '42341155847', address: 'sul', level: 0, password:'1234', password_confirmation: '1234')
  	expect(user).to_not be_valid
  end

  it 'create valid register' do
    user = User.create(name: 'Tom', class_code: '3D', register: '498053039', cpf: '42341155847', address: 'sul', level: 0, password:'1234', password_confirmation: '1234')
  	expect(user).to be_valid
  end

  it 'create dont valid register' do
    user = User.create(name: 'Tom', class_code: '3D', register: nil, cpf: '42341155847', address: 'sul', level: 0, password:'1234', password_confirmation: '1234')
  	expect(user).to_not be_valid
  end

  it 'create new valid and dont valid register' do
  	user = User.create(name: 'Tom2', class_code: '3D', register: '498053038', cpf: '87326476039', address: 'sul', level: 0, password:'1234', password_confirmation: '1234')
    expect(user).to be_valid
    user = User.create(name: 'Tom3', class_code: '3E', register: '498053038', cpf: '05222807061', address: 'norte', level: 1, password:'1234', password_confirmation: '1234')
    expect(user).to_not be_valid
  end

  it 'create valid cpf' do
    user = User.create(name: 'Tom', class_code: '3D', register: '498053039', cpf: '42341155847', address: 'sul', level: 0, password:'1234', password_confirmation: '1234')
  	expect(user).to be_valid
  end

  it 'create dont valid cpf' do
    user = User.create(name: 'Tom', class_code: '3D', register: '498053039', cpf: nil, address: 'sul', level: 0, password:'1234', password_confirmation: '1234')
  	expect(user).to_not be_valid
  end

  it 'create dont valid cpf' do
    user = User.create(name: 'Tom', class_code: '3D', register: '498053039', cpf: '111111111', address: 'sul', level: 0, password:'1234', password_confirmation: '1234')
  	expect(user).to_not be_valid
  end

  it 'create new valid cpf' do
    user = User.create(name: 'Tom', class_code: '3D', register: '498053039', cpf: '42341155847', address: 'sul', level: 0, password:'1234', password_confirmation: '1234')
  	expect(user).to be_valid
    user = User.create(name: 'Tom4', class_code: '3F', register: '498053036', cpf: '42341155847', address: 'leste', level: 1, password:'1234', password_confirmation: '1234')
  	expect(user).to_not be_valid
  end

  it 'create valid address' do
    user = User.create(name: 'Tom', class_code: '3D', register: '498053039', cpf: '42341155847', address: 'sul', level: 0, password:'1234', password_confirmation: '1234')
  	expect(user).to be_valid
  end

  it 'create dont valid address' do
    user = User.create(name: 'Tom', class_code: '3D', register: '498053039', cpf: '42341155847', address: nil, level: 0, password:'1234', password_confirmation: '1234')
  	expect(user).to_not be_valid
  end

  it 'create valid level' do
    user = User.create(name: 'Tom', class_code: '3D', register: '498053039', cpf: '42341155847', address: 'sul', level: 0, password:'1234', password_confirmation: '1234')
  	expect(user).to be_valid
  end

  it 'create dont valid level' do
    user = User.create(name: 'Tom', class_code: '3D', register: '498053039', cpf: '42341155847', address: 'sul', level: nil, password:'1234', password_confirmation: '1234')
  	expect(user).to_not be_valid
  end

end