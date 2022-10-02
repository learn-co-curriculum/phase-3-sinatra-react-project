class CreateTask < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :user_id
      t.integer :category_id
      t.integer :priority
      t.timestamp :created_at
      t.integer :completed?
    end 
  end
end
