class CreateBuyers < ActiveRecord::Migration[6.1]
  def change
    create_table :buyers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address

      t.timestamp :time_stamp
    end
  end
end
