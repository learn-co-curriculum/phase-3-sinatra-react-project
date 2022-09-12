class CreateRecipies < ActiveRecord::Migration[6.1]
  def change
    create_table :recipies do |t|
      t.string :name
    end
  end
end
