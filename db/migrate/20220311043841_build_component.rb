class BuildComponent < ActiveRecord::Migration[6.1]
  def change
    create_table :build_components do |t|
      t.integer :build_id
      t.integer :component_id
    end
  end
end