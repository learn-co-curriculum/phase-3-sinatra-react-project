class CreateCredentials < ActiveRecord::Migration[6.1]
  def change
    create_table :credentials do |t|
      t.string :username
      t.string :email
      t.string :password
    end
  end
end
