class CreateDeliverables < ActiveRecord::Migration[6.1]
  def change
    create_table :deliverables do |t|
      t.string :name
      t.integer :project_id
      t.integer :assigned
      t.timestamps
    end
  end
end
