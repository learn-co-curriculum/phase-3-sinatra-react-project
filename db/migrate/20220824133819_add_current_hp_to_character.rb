class AddCurrentHpToCharacter < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :current_hp, :integer
  end
end
