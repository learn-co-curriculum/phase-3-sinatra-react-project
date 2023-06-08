class AddedColumnsWorkout < ActiveRecord::Migration[6.1]
  def change
    add_column :workouts, :exercise, :string
    add_column :workouts, :day, :string
    add_column :workouts, :muscle, :string
    add_column :workouts, :difficulty, :string
  end
end
