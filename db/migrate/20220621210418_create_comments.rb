class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment_text
    end
    add_belongs_to :comments, :cheese
  end
end
