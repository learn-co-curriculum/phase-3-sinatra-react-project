class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :muscle
      t.string :difficulty
      t.string :instructions

      t.timestamps
  end
  end
end
