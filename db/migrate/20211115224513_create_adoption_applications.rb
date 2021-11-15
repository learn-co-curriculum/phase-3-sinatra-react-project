class CreateAdoptionApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :adoption_applications do |t|
      t.string :name
      t.date :date
      t.belongs_to :animal
      t.belongs_to :shelter
    end
  end
end
