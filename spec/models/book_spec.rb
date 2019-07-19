require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'create valid book' do
  	book = Book.create(title: '1984', author: 'George Orwell', publishing_company: 'Companhia das Letras', year: '2018', category: 'Romance', bar_code: '9788535914849', source_of_donation: 'Christyan', amount: '1')
  	expect(book).to be_valid
  end

  it 'create dont valid book' do
  	book = Book.create(title: nil, author: 'George Orwell', publishing_company: 'Companhia das Letras', year: '2018', category: 'Romance', bar_code: '9788535914849', source_of_donation: 'Christyan', amount: '1')
  	expect(book).to_not be_valid
  end

  it 'create valid author' do
    book = Book.create(title: '1984', author: 'George Orwell', publishing_company: 'Companhia das Letras', year: '2018', category: 'Romance', bar_code: '9788535914849', source_of_donation: 'Christyan', amount: '1')
  	expect(book).to be_valid
  end

  it 'create dont valid author' do
  	book = Book.create(title: '1984', author: nil, publishing_company: 'Companhia das Letras', year: '2018', category: 'Romance', bar_code: '9788535914849', source_of_donation: 'Christyan', amount: '1')
  	expect(book).to_not be_valid
  end

  it 'create valid publishing_company' do
    book = Book.create(title: '1984', author: 'George Orwell', publishing_company: 'Companhia das Letras', year: '2018', category: 'Romance', bar_code: '9788535914849', source_of_donation: 'Christyan', amount: '1')
    expect(book).to be_valid
  end

  it 'create dont valid publishing_company' do
    book = Book.create(title: '1984', author: 'George Orwell', publishing_company: nil, year: '2018', category: 'Romance', bar_code: '9788535914849', source_of_donation: 'Christyan', amount: '1')
    expect(book).to_not be_valid
  end

  it 'create valid year' do
    book = Book.create(title: '1984', author: 'George Orwell', publishing_company: 'Companhia das Letras', year: '2018', category: 'Romance', bar_code: '9788535914849', source_of_donation: 'Christyan', amount: '1')
    expect(book).to be_valid
  end

  it 'create dont valid year' do
    book = Book.create(title: '1984', author: 'George Orwell', publishing_company: 'Companhia das Letras', year: nil, category: 'Romance', bar_code: '9788535914849', source_of_donation: 'Christyan', amount: '1')
    expect(book).to_not be_valid
  end

  it 'create valid category' do
    book = Book.create(title: '1984', author: 'George Orwell', publishing_company: 'Companhia das Letras', year: '2018', category: 'Romance', bar_code: '9788535914849', source_of_donation: 'Christyan', amount: '1')
    expect(book).to be_valid
  end

  it 'create dont valid category' do
    book = Book.create(title: '1984', author: 'George Orwell', publishing_company: 'Companhia das Letras', year: '2018', category: nil, bar_code: '9788535914849', source_of_donation: 'Christyan', amount: '1')
    expect(book).to_not be_valid
  end

  it 'create valid bar code' do
    book = Book.create(title: '1984', author: 'George Orwell', publishing_company: 'Companhia das Letras', year: '2018', category: 'Romance', bar_code: '9788535914849', source_of_donation: 'Christyan', amount: '1')
    expect(book).to be_valid
  end

# n esta passando pelo rspec o teste dont valid bar code

  it 'create valid source of donation' do
    book = Book.create(title: '1984', author: 'George Orwell', publishing_company: 'Companhia das Letras', year: '8', category: 'Romance', bar_code: '9788535914849', source_of_donation: 'Christyan', amount: '1')
    expect(book).to be_valid
  end

  it 'create dont valid source of donation' do
    book = Book.create(title: '1984', author: 'George Orwell', publishing_company: 'Companhia das Letras', year: '8', category: 'Romance', bar_code: '9788535914849', source_of_donation: nil, amount: '1')
    expect(book).to_not be_valid
  end

  it 'create valid amount' do
    book = Book.create(title: '1984', author: 'George Orwell', publishing_company: 'Companhia das Letras', year: '8', category: 'Romance', bar_code: '9788535914849', source_of_donation: 'Christyan', amount: '1')
    expect(book).to be_valid
  end

  it 'create dont valid amount' do
    book = Book.create(title: '1984', author: 'George Orwell', publishing_company: 'Companhia das Letras', year: '8', category: 'Romance', bar_code: '9788535914849', source_of_donation: 'Christyan', amount: nil)
    expect(book).to_not be_valid
  end

end
