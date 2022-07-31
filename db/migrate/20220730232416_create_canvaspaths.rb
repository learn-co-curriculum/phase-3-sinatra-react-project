class CreateCanvaspaths < ActiveRecord::Migration[6.1]
  def change
    create_table :canvaspaths do |t|
      t.integer :canvasboard_id
      t.integer :user_id
      t.string :data
      t.string :uuid
      t.timestamps
    end
    
  end
end
