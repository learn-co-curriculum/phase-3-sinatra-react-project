class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :priority
      t.integer :user_id
    end
  end
end
