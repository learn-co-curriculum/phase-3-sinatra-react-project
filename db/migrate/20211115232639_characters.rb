class Characters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :character_name
      t.belongs_to :movie
      t.belongs_to :actor
    end
  end
end
