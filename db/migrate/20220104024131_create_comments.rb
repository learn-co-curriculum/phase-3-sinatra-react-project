class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :score
      t.string :review
      t.integer :user_id
      t.integer :movie_id
    end
  end
end
