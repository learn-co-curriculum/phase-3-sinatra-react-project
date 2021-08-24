class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :animals, :sex, :string
  end
end
