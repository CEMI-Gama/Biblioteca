# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Gabriel', class_code: '3D', register: '000337751', cpf: '70843816198', address: 'sul', level: 0, password:'1234', password_confirmation: '1234')
User.create(name: 'Chris', class_code: '3D', register: '498053039', cpf: '70852532156', address: 'sul', level: 1, password:'1234', password_confirmation: '1234')
Book.create(title: '1984', author: 'George Orwell', publishing_company: 'Companhia das Letras', year: '2018', category: 'Romance', bar_code: '9788535914849', source_of_donation: 'Christyan', amount: '1')
