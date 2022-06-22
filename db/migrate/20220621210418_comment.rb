class CreateComment < ActiveRecord::Migration[6.1]
  def change
    create_table :comment do |t|
      t.integer :cheese_id
      t.string :comment_text
    end
  end
end
