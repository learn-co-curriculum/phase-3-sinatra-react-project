class UpdateOrdersCompletedColumn < ActiveRecord::Migration[6.1]
  def change
    change_table :orders do |t|
      t.rename :completed?, :is_completed
    end
  end
end
