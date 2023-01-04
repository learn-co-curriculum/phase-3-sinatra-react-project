class CreateOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string  :name
      t.integer :total_units_owned
      
      t.timestamps
    end
  end
end
