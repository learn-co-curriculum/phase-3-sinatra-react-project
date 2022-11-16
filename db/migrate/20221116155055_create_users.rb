class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_role
      t.string :email
      t.string :password 
      t.string :profile_pic
      t.timestamps
    end
  end
end
