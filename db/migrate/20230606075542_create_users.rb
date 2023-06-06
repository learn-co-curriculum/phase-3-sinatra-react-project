class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :message_id
      t.string :first_name
      t.string :last_name
      t.string :avatar
    end
  end
end
