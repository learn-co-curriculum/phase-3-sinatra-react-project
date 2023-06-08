class UpdatedColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :workouts, :instructions, :string
  end
end
