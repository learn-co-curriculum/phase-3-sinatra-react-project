class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :city
      t.string :bio
      t.string :interested_in
      t.string :photo
    end
  end
end
