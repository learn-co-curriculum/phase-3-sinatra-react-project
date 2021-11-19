class ChangePilot < ActiveRecord::Migration[6.1]
  def change
    add_column :pilots, :plane_id, :integer
  end
end
