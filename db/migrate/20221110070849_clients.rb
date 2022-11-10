class Clients < ActiveRecord::Migration[6.1]
  def up
    create_table :clients do |t|
      t.string :name
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
  def down
    drop_table :clients
  end
end
