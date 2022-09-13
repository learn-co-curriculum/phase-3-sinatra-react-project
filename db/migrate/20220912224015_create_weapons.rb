class CreateWeapons < ActiveRecord::Migration[6.1]
  def change
    create_table :weapons do |t|
      t.string :weapon_name
      t.text :weapon_description
    end
  end
end
