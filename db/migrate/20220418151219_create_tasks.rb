class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :user_id
      t.integer :estimated_time
      t.integer :actual_time
      t.integer :scariness
      t.boolean :finished
      t.datetime :created_time
      t.datetime :finished_time
    end
  end
end
