class CreateArenas < ActiveRecord::Migration[6.1]
  def change
    create_table :arenas do |t|
      t.string :name
      t.string :size
      t.string :climate
      t.string :terrain
    end 
  end
end
