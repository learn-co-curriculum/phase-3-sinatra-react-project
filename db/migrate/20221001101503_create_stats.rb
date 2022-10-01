class CreateStats < ActiveRecord::Migration[6.1]
  def change
    create_table :stats do |t|
      t.boolean :currently_reading
      t.boolean :finished_reading
      t.integer :pages_read
      t.integer :book_id
      t.integer :user_id
    end
  end
end
