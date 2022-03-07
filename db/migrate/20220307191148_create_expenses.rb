class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.string :description
      t.float :monthly
      t.string :annual
      t.string :frequency
      t.string :due_date
      t.string :notes
      t.references :user
    end
  end
end
