class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :parks, :fee, :string
  end
end
