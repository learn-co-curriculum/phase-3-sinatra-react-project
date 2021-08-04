class CreateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.datetime :date
      t.references :trip, foreign_key: true
    end
  end
end
