class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.references :user, null: false, foreign_key: true
      t.references :receiver, references: :users, foreign_key: {to_table: :users}
      t.string :status
      t.boolean :first_message_sent, default: false
      t.timestamps
    end
  end
end
