class CreateBuyers < ActiveRecord::Migration[6.1]
  def change
    create_table :buyers do |t|
      t.string :buyer_name
      t.string :password
    end
  end
end
