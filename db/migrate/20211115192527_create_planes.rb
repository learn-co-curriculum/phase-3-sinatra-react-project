class CreatePlane < ActiveRecord::Migration[6.1]
  def change
    create_table :plane do |t|
      t.integer :plane_number 
      t.string :destination 
    end
  end
end
