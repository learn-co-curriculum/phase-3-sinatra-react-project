class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :pronouns
      t.integer :age
      t.string :description
      t.string :location
      t.string :image
    end
  end
end
