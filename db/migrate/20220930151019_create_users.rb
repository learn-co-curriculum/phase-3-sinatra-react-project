class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :session_cookie
      t.string :profile_picture

      t.timestamps
    end

  end
end
