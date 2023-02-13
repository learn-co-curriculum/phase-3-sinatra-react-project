class CreateKisses < ActiveRecord::Migration[6.1]
  def change
    create_table :kisses do |t|
      t.integer :user_id
      t.integer :recipe_id
    end
  end
end
