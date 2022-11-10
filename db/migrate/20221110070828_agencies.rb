class Agencies < ActiveRecord::Migration[6.1]
  def up
    create_table :agencies do |t|
      t.string :name 
      t.string :email
      #t.blob   :logo
      
      t.timestamps
    end
  end
  def down
    drop_table :agencies
  end
end
