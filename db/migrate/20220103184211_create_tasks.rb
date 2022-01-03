class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.references :household
      t.references :person
      t.references :pet
      t.string :task_name
      t.datetime :due_date
      t.datetime :end_date
      t.datetime :task_time
      t.string :task_location

      t.timestamps
    end
  end
end
