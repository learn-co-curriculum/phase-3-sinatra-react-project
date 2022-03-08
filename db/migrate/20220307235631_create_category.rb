class CreateCategory < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :title
    end 
  end
end
