class Upvotes < ActiveRecord::Migration[6.1]
  def change
    create_table :upvotes  do |t|

    t.integer :amount
    t.references :box
    end
  end
end
