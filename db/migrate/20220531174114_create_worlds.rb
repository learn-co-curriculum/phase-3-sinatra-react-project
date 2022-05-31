class CreateWorlds < ActiveRecord::Migration[6.1]
  def change
    create_table :worlds do |t|
      t.string :name_of_world
      t.integer :discovered_year
      t.integer :galaxy_id
    end
  end
end
