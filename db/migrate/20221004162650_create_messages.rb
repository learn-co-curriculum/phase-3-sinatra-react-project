class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.references :message_sender, references: :users, foreign_key: {to_table: :users}
      t.references :message_receiver, references: :users, foreign_key: {to_table: :users}
      t.string :message
      t.timestamps
    end
  end
end
