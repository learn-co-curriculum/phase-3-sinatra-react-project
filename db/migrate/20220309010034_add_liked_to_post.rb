class AddLikedToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :is_click, :boolean
  end
end
