class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :username
      t.string :password
      t.string :email
      t.integer :phone_number
      t.string :customer_name
      t.string :gender
    end
  end
end
