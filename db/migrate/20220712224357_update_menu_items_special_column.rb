class UpdateMenuItemsSpecialColumn < ActiveRecord::Migration[6.1]
  def change
    change_table :menu_items do |t|
      t.rename :is_special?, :is_special
    end
  end
end
