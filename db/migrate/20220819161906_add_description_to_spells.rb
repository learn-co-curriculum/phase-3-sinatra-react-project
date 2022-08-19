class AddDescriptionToSpells < ActiveRecord::Migration[6.1]
  def change
    add_column :spells, :description, :string
  end
end
