class DropServiceCategoryTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :service_categories
  end
end
