class CreateChatrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :chatrooms  do |t|
      t.string :title
      t.timestamps
    end 
  end
end
