class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.references :match, null: false, foreign_key: true
      t.integer :message_sender
      t.integer :message_receiver
      t.string :message
      t.timestamps
    end
  end
end
