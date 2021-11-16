class AddColumnUrlToAnimals < ActiveRecord::Migration[6.1]
  def change
    add_column :animals, :img_url, :string
  end
end
