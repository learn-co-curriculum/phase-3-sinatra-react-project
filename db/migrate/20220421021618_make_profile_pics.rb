class MakeProfilePics < ActiveRecord::Migration[6.1]
  def change
    create_table :profile_pics do |t|
      t.string :picture_src
      t.string :alt_text
    end
  end
end
