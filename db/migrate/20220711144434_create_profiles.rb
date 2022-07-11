class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name 
      t.integer :age
      t.string :gender
      t.string :sexuality
      t.string :location
      t.text :info
    end
  end
end
