class CreateArtistsTable < ActiveRecord::Migration[6.1]
  def change
    create_table "artists" do |t|
      t.string :name
      t.string :resource_url
    end
  end
end
