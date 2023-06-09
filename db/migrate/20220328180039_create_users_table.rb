class CreateUsersTable < ActiveRecord::Migration[6.1]
    def change
      create_table :users do |t|
        t.string :username
        t.string :name
        t.string :email
        t.string :image
        t.string :bio
      end
    end
  end