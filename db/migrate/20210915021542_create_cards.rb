class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :card_type
      t.integer :cost
      t.integer :damage
      t.integer :shield
      t.integer :heal
      t.integer :upgrade
    end
  end
end
