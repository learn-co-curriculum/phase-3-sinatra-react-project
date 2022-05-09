class CreateLoverTable < ActiveRecord::Migration[6.1]
  def change
    create_table :lovers do |t|
      t.string :username
      t.string :profile_picture
      t.string :bio
      t.string :gender
      t.string :interests
      t.date :birthdate
      t.boolean :wants_a_date
    end
  end
end
