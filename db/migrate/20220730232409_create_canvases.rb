class CreateCanvases < ActiveRecord::Migration[6.1]
  def change
    create_table :canvasboards do |t|
      t.string :identifier
      t.string :canvas_name
      t.timestamps
    end
    
  end
end
