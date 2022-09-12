class CreateEateries < ActiveRecord::Migration[6.1]
  def change
    create_table :eateries do |t|
      t.string :name
      t.string :cuisine_type
      t.boolean :downtown?
      t.string :address
      t.integer :city_id
    end
  end
end
