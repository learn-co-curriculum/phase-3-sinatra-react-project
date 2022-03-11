class Component < ActiveRecord::Migration[6.1]
  def change
    create_table :components do |t|
    t.string :name
    t.integer :price
    t.string :component_type
    end
  end
end