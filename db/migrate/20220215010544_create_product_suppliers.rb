class CreateProductSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :product_suppliers do |t|
      t.integer :product_id
      t.integer :supplier_id
    end
  end
end
