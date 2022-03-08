class CreateMatchesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :profile_id
      t.boolean :user_like
      t.boolean :profile_like
      t.timestamps
    end
  end
end
