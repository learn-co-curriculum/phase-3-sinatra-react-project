class CreatePaymentDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_details do |t|
      t.integer :customer_id
      t.string :payment_name
      t.integer :cc_number
      t.integer :exp_code
      t.integer :cvc
      t.string :billing_address
    end
  end
end
