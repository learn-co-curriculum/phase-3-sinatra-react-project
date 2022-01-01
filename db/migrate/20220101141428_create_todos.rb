class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :item
      t.string :importance
      t.integer :category_id
    end
  end
end
