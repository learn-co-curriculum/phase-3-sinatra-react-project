class CreateSellers < ActiveRecord::Migration[6.1]
  def change
    create_table :sellers do |t|
      t.string :first_name
      t.string :last_name
      t.string :location
      t.integer :rating

    end
  end
end
