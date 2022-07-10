class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.integer :time
      t.string :name
      t.string :tod

    end
  end
end
#change time method?
