class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t| 
      t.string :city_name, :state
    end
  end
end
