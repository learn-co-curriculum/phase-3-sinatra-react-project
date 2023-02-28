class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name 
      t.string :phonenumber
      t.string :email
      t.string :location 
      t.timestamps
    end 
  end
end
