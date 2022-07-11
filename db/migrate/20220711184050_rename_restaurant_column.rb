class RenameRestaurantColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :restaurants, :type, :category
  end
end
