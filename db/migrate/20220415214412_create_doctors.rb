class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :doctor_firstname 
      t.string :doctor_lastname 
      t.string :doctor_phone 
      t.string :doctor_email 
    end
  end
end
