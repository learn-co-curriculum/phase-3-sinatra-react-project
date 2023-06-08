class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, default: ""
      t.string :speciality
      t.string :avatar_url
      t.string :experience
      t.string :interests
      t.string :hobies
      t.datetime :date_of_birth
      t.string :locale
      t.string :address
      t.string :education
    end
  end
end
