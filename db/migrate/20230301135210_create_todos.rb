class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :priority
    end
  end
end
