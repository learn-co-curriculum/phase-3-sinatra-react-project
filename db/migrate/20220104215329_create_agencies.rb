class CreateAgencies < ActiveRecord::Migration[6.1]
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :city
    end
  end
end
