class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.string :artist
      t.string :date
      t.integer :unsold_tickets
    end
  end
end
