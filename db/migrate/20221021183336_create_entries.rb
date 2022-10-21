class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :name
      t.string :image_url
      t.string :location
      t.string :description
      t.belongs_to :user
    end
  end
end
