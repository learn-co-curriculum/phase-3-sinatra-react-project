class CreateSpecialistTable < ActiveRecord::Migration[6.1]
  def change
    create_table :specialists do |t|
      t.string :speciality
      t.timestamps 
    end
  end
end
