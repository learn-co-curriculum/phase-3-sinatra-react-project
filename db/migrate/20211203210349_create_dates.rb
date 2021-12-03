class CreateDates < ActiveRecord::Migration[6.1]
  def change
    create_table :dates do |t|
      t.timestamps
      t.datetime :date
    end
  end
end
