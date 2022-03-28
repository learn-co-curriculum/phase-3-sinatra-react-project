class CreatePhysicians < ActiveRecord::Migration[6.1]
  def change
    create_table :physicians do |t|
      t.string :first_name
      t.string :last_name
      t.string :country
      t.integer :license_number
    end
  end
end
