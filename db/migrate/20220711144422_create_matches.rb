class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.boolean :swipe_user
      t.boolean :swipe_profile
      t.integer :user_id
      t.integer :profile_id
    end
  end
end
