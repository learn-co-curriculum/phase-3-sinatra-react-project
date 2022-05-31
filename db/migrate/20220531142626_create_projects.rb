class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.float :time_required
      t.string :tools_required
      t.text :description
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :car_id
    end
  end
end
