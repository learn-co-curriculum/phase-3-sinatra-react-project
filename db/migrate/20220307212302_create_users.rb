class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :difficulty
      t.integer :highscore
      t.string :ip_address
    end
  end
end
