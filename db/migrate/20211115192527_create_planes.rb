class CreatePlanes < ActiveRecord::Migration[6.1]
  def change
    create_table :planes do |t|
      t.integer :plane_number 
      t.string :destination 
    end
  end
end
