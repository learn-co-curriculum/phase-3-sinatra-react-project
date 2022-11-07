class CreateFines < ActiveRecord::Migration[6.1]
  def change
    create_table :fines do |t|
      t.float :amount
      t.integer :borrow_id
      t.datetime :date_created
    end
  end
end
