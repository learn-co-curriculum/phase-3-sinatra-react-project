class CreateEmojis < ActiveRecord::Migration[6.1]
  def change
    create_table :emojis do |t|
      t.string :feeling
      t.string :icon
    end
  end
end
