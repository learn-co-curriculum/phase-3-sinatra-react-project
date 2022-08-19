class Spells < ActiveRecord::Migration[6.1]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :range
      t.string :casting_time
      t.string :duration
      t.integer :level
      t.boolean :concentration
      t.boolean :ritual
    end
  end
end
