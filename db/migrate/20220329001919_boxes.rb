class Boxes < ActiveRecord::Migration[6.1]
  def change
    create_table :boxes do |t|

    t.string :title
    t.integer :upvotes
    end
  end
end
