class CreateSeats < ActiveRecord::Migration[6.1]
  def change
    create_table :seats do |t|
      t.integer :seat_number
      t.integer :customer_id
      t.integer :planes_id 
    end
  end
end
