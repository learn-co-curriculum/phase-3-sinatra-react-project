class CreateRepeatedTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :repeated_tasks do |t|
      t.references :start_day
      t.references :end_day
      t.references :category
      t.references :priority
      t.integer :interval_value
      t.string :interval_unit
      t.string :title
      t.string :description
      t.string :location
      t.time :start_time
      t.time :end_time
      t.boolean :background_task
    end
  end
end
