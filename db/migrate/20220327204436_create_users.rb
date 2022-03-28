class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :email_verified
      t.string :nickname
      t.string :picture
      t.timestamps
    end
  end
end
