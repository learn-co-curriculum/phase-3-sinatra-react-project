class Create
  initial tables < ActiveRecord::Migration[6.1]
  def change
    create_table :table_name do |t|
      t.column_type :column_name

      t.timestamps
    end
  end
end
