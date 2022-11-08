class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :phone_number
      t.string :gender
      t.integer :age
      t.timestamps
    end
  end
end
