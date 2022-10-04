class CreateCurrentUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :current_users do |t|
      t.string :username
      t.string :password
      t.string :email

    end
  end
end
