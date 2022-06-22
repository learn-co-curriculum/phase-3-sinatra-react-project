class CreateNewcomment < ActiveRecord::Migration[6.1]
  def change
    create_table :new_comment do |t|
      t.string :new_comment_text
      t.ineger :cheese_id
    end
  end
end
