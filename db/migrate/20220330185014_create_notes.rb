class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :description
      t.integer :task_id
      t.integer :employee_id
      t.timestamps
    end
  end
end
