class AddColumnToEateries < ActiveRecord::Migration[6.1]
  def change
    add_column :eateries, :rating, :integer
  end
end
