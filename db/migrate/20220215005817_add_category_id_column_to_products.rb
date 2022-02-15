class AddCategoryIdColumnToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :category_id, :integer
  end
end
