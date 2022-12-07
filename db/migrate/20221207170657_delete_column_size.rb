class DeleteColumnSize < ActiveRecord::Migration[6.1]
  def change
    remove_column :bubbleteas, :topping_2
    remove_column :bubbleteas, :size
  end
end
