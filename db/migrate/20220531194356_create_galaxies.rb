class CreateGalaxies < ActiveRecord::Migration[6.1]
  def change
    create_table :galaxies do |t|
      t.string :galaxy_name
    end
  end
end
