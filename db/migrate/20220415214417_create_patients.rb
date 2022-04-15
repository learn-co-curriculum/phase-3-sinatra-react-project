class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :patient_firstname 
      t.string :patient_lastname 
      t.string :patient_address 
      t.string :patient_city 
      t.string :patient_state 
      t.string :patient_phone 
      t.string :patient_email 
    end
  end
end
