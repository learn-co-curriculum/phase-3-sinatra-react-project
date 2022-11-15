class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.references :user_id
      t.references :chatroom_id
      t.string :message
      t.datetime :timestmap
    end
  end
end
