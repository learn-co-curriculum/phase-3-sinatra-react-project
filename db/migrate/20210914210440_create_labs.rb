class CreateLabs < ActiveRecord::Migration[6.1]
  def change
    create_table :labs do |t|
      t.string :name
      t.string :num_commits
      t.string :date_of_commit
      t.string :time_of_commit
      t.string :completed
      t.boolean :tasked
      t.integer :student_id
    end
  end
end
