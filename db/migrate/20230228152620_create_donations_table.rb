class CreateDonationsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :donations do |t|
      t.string :name
      t.string :image
      t.string :description
      t.integer :quantity
      t.string :category
      t.integer :charity_id
      t.timestamps

    end
  end
end
