class CreateMuseums < ActiveRecord::Migration[6.1]
  def change
    create_table :museums do |t| 
      t.string :name, :address, :zipcode, :weburl, :image
      t.integer :city_id, :list_id
    end
  end
end
