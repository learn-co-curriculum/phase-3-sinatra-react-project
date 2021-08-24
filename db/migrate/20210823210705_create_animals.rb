class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :image
      t.string :birthdate
      t.string :species
      t.string :sex
    end
  end
end


# zookeeper: name (str), start_work (datetime), img, 
# Animal log: date (int), note(str), last pooped at(datetime), pooped(boolean), last fed at(datetime), fed(boolean) zookeper id, animals id, time_stamps
# animals: animal_name(str), photo_of_animal (str), birthdate (datetime), species (str)