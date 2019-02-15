class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :class_code
      t.string :register
      t.string :cpf
      t.string :address
      t.integer :level, :default => 1
      t.string :password_digest
      t.timestamps
    end
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publishing_company
      t.string :year
      t.string :category
      t.string :bar_code
      t.string :source_of_donation
      t.string :amount
      t.timestamps
    end
  end
end
