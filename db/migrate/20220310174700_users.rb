class Users < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name     
      t.string :contact             
      t.string :days_wanted
      t.string :image 
    end
  end
end
