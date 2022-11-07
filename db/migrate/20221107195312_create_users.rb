class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.string :county
      t.string :city
      t.string :address

      t.string :password_digest

      t.timestamps
    end
  end
end
