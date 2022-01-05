class AddColumnsToTasks < ActiveRecord::Migration[6.1]
  def change
    change_table :tasks do |t|
      t.datetime :task_start_date
      t.boolean :task_is_recurring
      t.integer :task_frequency
    end
  end
end
