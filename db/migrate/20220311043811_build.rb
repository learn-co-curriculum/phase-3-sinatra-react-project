class Build < ActiveRecord::Migration[6.1]
  def change
    create_table :builds do |t|
    t.string :name
    t.integer :price
    end
  end
end