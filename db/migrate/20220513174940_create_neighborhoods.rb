class CreateNeighborhoods < ActiveRecord::Migration[6.1]
  def change

    create_table :neighborhoods do |t|
      t.string :name

      t.timestamps
    end
  end
end
