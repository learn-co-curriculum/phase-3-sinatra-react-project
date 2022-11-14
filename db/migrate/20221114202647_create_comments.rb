class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :post_id
      t.integer :user_id
      t.datetime :comment_date

      t.timestamps
    end    
  end
end
