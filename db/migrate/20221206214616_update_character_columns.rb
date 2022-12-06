class UpdateCharacterColumns < ActiveRecord::Migration[6.1]
  def change
    rename_column :characters, :type, :alignment
  end
end
