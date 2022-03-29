class Comments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|

    t.string :text
    t.references :box
    end
  end
end
