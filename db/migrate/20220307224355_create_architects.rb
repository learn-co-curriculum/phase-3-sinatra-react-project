class CreateArchitects < ActiveRecord::Migration[6.1]
  def change
    create_table :architects do |t|
      t.string :full_name
      t.string :image_url
    end
  end
end
