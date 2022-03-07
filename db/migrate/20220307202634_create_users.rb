class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :pronouns
      t.integer :age
      t.string :description
      t.string :location
      t.string :image
    end
  end
end
