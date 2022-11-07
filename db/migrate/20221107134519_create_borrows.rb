class CreateBorrows < ActiveRecord::Migration[6.1]
  def change
    create_table :borrows do |t|
      t.integer :member_id
      t.integer :book_id
      t.integer :given_by_id
      t.datetime :borrowed_on
      t.datetime :returned_on
      t.datetime :due_date
    end
  end
end
