class CreateAnimalLogs < ActiveRecord::Migration[6.1]
  def change 
    create_table :animal_logs do |t|
      t.string :note
      t.boolean :pooped
      t.boolean :fed
      t.belongs_to :zookeeper, foreign_key: true
      t.belongs_to :animal, foreign_key: true
      t.timestamps
    end
  end
end
