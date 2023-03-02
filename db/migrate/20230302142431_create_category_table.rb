class CreateCategoryTable < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
    end
  end
end
