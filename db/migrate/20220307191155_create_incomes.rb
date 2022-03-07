class CreateIncomes < ActiveRecord::Migration[6.1]
  def change
    create_table :incomes do |t|
      t.string :description
      t.float :amount
      t.references :user
    end
  end
end
