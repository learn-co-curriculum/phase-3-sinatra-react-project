class DeleteColumnReview < ActiveRecord::Migration[6.1]
  def change
    remove_column :customers, :review
    add_column :orders, :comment, :string
  end
end
