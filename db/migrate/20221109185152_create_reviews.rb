class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table reviews do |t|
      t.integer :customer_id
      t.integer :product_id
      t.string :comment
    end
  end
end
