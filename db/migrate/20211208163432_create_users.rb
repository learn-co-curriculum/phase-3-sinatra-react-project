class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password
      t.string :github
      t.string :linkedin
      t.string :image_url
      t.string :bio
    end
  end
end
