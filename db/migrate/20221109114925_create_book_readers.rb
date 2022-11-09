class CreateBookReaders < ActiveRecord::Migration[6.1]
  def change
    create_table :book_readers do |t|
      t.integer :reader_id
      t.integer :book_id
      t.boolean :read
      t.integer :rating
      t.string :review
      t.date :date_read

      t.timestamps
    end
  end
end
