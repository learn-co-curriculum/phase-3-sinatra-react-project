class UsersPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :users_posts do |t|
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
