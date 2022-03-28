class CreateEmployeeTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_tasks do |t|
      t.integer :team_id
      t.integer :employee_id
      t.integer :task_id
      t.timestamps
    end
  end
end
