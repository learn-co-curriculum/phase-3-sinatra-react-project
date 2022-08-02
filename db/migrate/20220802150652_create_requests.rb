class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|

      t.string :description
      t.integer :project_id
      
      
    end
  end
end

