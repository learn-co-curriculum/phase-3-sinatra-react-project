class CreateMatchesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.integer :likes_id_1
      t.integer :likes_id_2
    end
  end
end
