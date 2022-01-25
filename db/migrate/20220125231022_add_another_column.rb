class AddAnotherColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :states, :abbr, :string
  end
end
