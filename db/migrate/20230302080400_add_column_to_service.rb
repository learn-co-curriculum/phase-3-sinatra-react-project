class AddColumnToService < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :service_category_id, :integer
  end
end
