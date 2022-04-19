class Bests < ActiveRecord::Migration[6.1]
  def change
     create_table :bests do |t|
      t.string :title
    end
  end
end
