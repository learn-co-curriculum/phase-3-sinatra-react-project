class AddColorColumnToPostsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :color, :string
  end
end
