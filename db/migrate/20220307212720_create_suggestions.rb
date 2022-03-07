class CreateSuggestions < ActiveRecord::Migration[6.1]
  def change
    create_table :suggestions do |t|
      t.string :suggested_word
      t.boolean :approved
      t.integer :user_id
    end
  end
end
