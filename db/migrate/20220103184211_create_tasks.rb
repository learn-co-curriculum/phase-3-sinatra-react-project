class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.references :household
      t.references :user
      t.references :pet
      t.string :task_name
      t.datetime :task_due_date
      t.datetime :task_end_date
      t.string :task_location

      t.timestamps
    end
  end
end
