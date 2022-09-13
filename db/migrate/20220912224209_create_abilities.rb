class CreateAbilities < ActiveRecord::Migration[6.1]
  def change
    create_table :abilities do |t|
      t.string :ability_name
      t.text :ability_description
    end
  end
end
