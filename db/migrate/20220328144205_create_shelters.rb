class CreateShelters < ActiveRecord::Migration[6.1]
  def change
    create_table :shelters do |t|
      t.string :shelter_name
      t.string :shelter_address
      t.string :shelter_phone
    end
  end
end
