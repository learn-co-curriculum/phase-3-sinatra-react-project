class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :content 
      t.belongs_to :user
      t.belongs_to :chatroom
      t.timestamps
    end 
  end
end
