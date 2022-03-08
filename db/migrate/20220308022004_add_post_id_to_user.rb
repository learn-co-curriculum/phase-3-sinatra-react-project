class AddPostIdToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :post_id, :integer
  end
end


