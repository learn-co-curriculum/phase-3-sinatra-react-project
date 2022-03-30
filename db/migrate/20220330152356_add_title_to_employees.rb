class AddTitleToEmployees < ActiveRecord::Migration[6.1]
  def change
    change_table :employees do |t|
      t.string :title
    end
  end
end
