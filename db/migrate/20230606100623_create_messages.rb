class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :message_id
      t.integer :from_number
      t.integer :to_number
      t.integer :user_id
      t.string :message_text
      t.timestamps null: false
    end
      
  end
end
