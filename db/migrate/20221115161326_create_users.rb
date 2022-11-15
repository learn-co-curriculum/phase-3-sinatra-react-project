class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :teacher
      t.boolean :student
      t.string :password
    end
  end
end
