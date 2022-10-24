class Therapists < ActiveRecord::Migration[6.1]
  def change
    create_table :therapists do |t|
      t.string :first_name
      t.string :last_name
      t.string :licensure
      t.integer :years_of_experience
    end
  end
end
