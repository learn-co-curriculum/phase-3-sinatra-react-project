class CreateAddressDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :address_details do |t|
      t.integer :customer_id
      t.string :label
      t.string :address_name
      t.string :address
    end
  end
end
