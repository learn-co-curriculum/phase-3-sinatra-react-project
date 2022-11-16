class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :message
      t.integer :stars
      t.integer :user_id
      t.integer :destination_id
      t.timestamps
    end
  end
end
