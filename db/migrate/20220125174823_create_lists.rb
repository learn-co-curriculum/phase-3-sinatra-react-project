class CreateLists < ActiveRecord::Migration[6.1]
  def change
     create_table :lists do |t|
        t.string :list_name
     end
  end
end
