class AddTimestampLikeButton < ActiveRecord::Migration[6.1]
  def change
    add_column :likes, :created_at, :datetime
    add_column :likes, :updated_at, :datetime
  end
end
