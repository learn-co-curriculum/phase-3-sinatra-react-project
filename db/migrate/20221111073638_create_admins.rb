class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
t.string :username
t.string :password
    end
  end
end
