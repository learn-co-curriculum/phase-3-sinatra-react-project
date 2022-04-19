class RenameListId < ActiveRecord::Migration[6.1]
  def change
    rename_column(:museums, :list_id, :trip_id)
  end
end
