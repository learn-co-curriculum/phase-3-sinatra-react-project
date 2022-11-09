class AddTimestampToReviewsTable < ActiveRecord::Migration[6.1]
  def change
    change_table :reviews do |t|
      t.remove :customer_id, :product_id
      t.references :customer, foreign_key: true
      t.references :product, foreign_key: true
      t.timestamps
    end

    change_column :reviews, :comment, :text    
  end
end
