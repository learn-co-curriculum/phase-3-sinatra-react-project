class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :username
      t.string :email
      t.string :genre
    end
  end
end
