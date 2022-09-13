class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :history
      t.integer :user_id
      t.integer :template_id
    end
  end
end
