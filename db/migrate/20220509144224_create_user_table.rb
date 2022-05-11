class CreateUserTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :profile_picture
      t.string :bio
      t.string :gender
      t.string :interests
    end
  end
end
