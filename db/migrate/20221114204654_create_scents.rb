class CreateScents < ActiveRecord::Migration[6.1]
  def change
    create_table :scents do |t|
      t.string :name
    end    
  end
end
