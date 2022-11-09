class AddRatingToReviewsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :rating, :integer
  end
end
