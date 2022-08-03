class AddColumnsToDogTable < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :image, :string

  end
end
