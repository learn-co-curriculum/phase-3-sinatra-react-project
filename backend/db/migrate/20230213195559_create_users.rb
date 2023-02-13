class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :image_URL
    end
  end
end
