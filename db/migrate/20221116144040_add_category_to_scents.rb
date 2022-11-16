class AddCategoryToScents < ActiveRecord::Migration[6.1]
  def change
    add_column :scents, :category, :string
  end
end
