class RemoveAndUpdateProductsTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :image
    add_column :products, :image, :string
  end
end
