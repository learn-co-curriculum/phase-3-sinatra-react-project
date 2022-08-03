class CreateCollaborations < ActiveRecord::Migration[6.1]
  def change
    create_table :collaborations do |t|
      t.integer :canvasboard_id
      t.integer :user_id
    end
  end
end

