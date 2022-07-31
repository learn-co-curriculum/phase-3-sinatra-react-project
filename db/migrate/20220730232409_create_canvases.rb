class CreateCanvases < ActiveRecord::Migration[6.1]
  def change
    create_table :canvasboards do |t|
      t.string :identifier
      t.string :canvas_name
      t.integer :user_id
      t.timestamps
    end
    
  end
end
