class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :profile_picture
    end
  end
end
