class CreateComments < ActiveRecord::Migration[6.1]
  def change 
    create_table :comments do |t|
      t.string :name
      t.string :avatar_url
      t.text :message
      t.timestamps
    end
  end
end
