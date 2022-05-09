class CreateUserTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :profile_picture
      t.string :bio
      t.string :gender
      t.string :interests
      t.date :birthdate
    end
  end
end
