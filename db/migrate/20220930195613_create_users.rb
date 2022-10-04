class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.integer :age
      t.text :bio
      t.string :profile_img
      t.string :desired_sex
      t.timestamps
    end
  end
end