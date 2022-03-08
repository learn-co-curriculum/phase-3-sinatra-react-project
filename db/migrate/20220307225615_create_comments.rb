class CreateComments < ActiveRecord::Migration[6.1]

    def change
      create_table :comments do |t|
        t.string :content
        t.integer :post_id
        t.integer :user_id
      end
  end
end
