class AddCompletedColumnToTasks < ActiveRecord::Migration[6.1]
  def change
    change_table :tasks do |t|
      t.boolean :completed
    end
  end
end
