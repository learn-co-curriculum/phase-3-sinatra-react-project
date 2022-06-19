class CreateEmojis < ActiveRecord::Migration[6.1]
  def change
    create_table :emojis do |t|
      t.string :feeling
      t.string :emoji_img
      t.integer :student_id
      t.integer :drink_id
    end
  end
end
