class CreateDonations < ActiveRecord::Migration[6.1]
  def change
    create_table :donations do |t|
      t.integer :amount
      t.belongs_to :animal
      t.belongs_to :user
      t.timestamps
    end
  end
end