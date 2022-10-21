class CreateCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :collections do |t|
      t.integer :song_rating
      t.belongs_to :song
      t.belongs_to :user
    end
  end
end
