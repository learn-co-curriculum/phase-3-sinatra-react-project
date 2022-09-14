class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :feeling
      t.belongs_to :post 
    end
  end
end
