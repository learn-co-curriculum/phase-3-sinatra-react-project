class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :note_text
      t.references :trip, foreign_key: true, null: false
    end
  end
end
