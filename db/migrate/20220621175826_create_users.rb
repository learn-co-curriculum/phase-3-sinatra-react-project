class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :image
      t.integer :emoji_id
      t.integer :drink_id
    end
  end
end
