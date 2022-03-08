class DeleteLikes < ActiveRecord::Migration[6.1]
  def change
    drop_table :likes
  end
end
