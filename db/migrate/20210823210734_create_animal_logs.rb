class CreateAnimalLogs < ActiveRecord::Migration[6.1]
  def change 
    create_table :animal_logs do |t|

      t.string :note
      t.belongs_to :zookeeper, foreign_key: true
      t.belongs_to :animal, foreign_key: true
      t.boolean :pooped
      t.time_stamps
      t.boolean :fed
      t.datetime :last_fed

    end
  end
end
