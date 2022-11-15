class CreateSubcategories < ActiveRecord::Migration[6.1]
  def change
    create_table :subcategories do |t|
      t.string :subcategory_name
      t.integer :category_id
    end
  end
end
