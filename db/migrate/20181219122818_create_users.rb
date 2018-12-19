class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :class_code
      t.string :register
      t.string :cpf
      t.string :address
      t.integer :level
      t.string :password_digest
      t.string :string

      t.timestamps
    end
  end
end
