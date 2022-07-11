class CreateHabitats < ActiveRecord::Migration[6.1]
  def change
    create_table :habitats do |t|
      t.string :name
    end
  end
end
