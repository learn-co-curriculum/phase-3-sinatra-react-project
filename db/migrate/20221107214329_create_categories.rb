class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string  :name
      # t.boolean  :completed_event
      
    end
  end
end
