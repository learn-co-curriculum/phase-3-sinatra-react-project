class CreateCheese < ActiveRecord::Migration[6.1]
  def change
    create_table :cheese do |t|
      t.string :name
      t.string :type
      t.integer :age
      t.string :location
      t.string :bio
      t.string :comment_text
      t.string :new_comment_text
    end
  end
end
