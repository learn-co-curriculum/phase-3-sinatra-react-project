class DeleteColumnBubbletea < ActiveRecord::Migration[6.1]
  def change
    remove_column :bubbleteas, :base
    remove_column :bubbleteas, :topping_1
    remove_column :bubbleteas, :topping_1
    add_column :bubbleteas, :menu_name, :string
  end
end
