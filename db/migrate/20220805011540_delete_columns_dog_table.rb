class DeleteColumnsDogTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :supplier_id, :string
    remove_column :orders, :price, :float
    remove_column :dogs, :image, :string
  end
end
