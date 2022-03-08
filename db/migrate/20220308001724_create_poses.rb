class CreatePoses < ActiveRecord::Migration[6.1]
  def change
    create_table :poses do |t|
      t.string :sanskrit_name
      t.string :english_name
      t.string :image_url
    end
  end
end
