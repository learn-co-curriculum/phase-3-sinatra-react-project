class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :recipe_id
    end
  end
end
