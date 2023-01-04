class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :description
      t.belongs_to :category
      t.belongs_to :day
    end
  end
end
