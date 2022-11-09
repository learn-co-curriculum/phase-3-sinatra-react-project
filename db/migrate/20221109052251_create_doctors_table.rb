class CreateDoctorsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.integer :contact
      t.integer :speciality_id
    end
  end
end
