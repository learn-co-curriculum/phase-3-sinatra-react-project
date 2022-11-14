class AddTownIdToPlaygrounnds < ActiveRecord::Migration[6.1]
  def change
    add_column :playgrounds, :town_id, :integer, null:false
  end
end
