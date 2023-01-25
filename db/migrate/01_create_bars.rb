class CreateBars < ActiveRecord::Migration[6.1]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :category
      t.string :price
      t.integer :closing_time
      t.string :location
      # t.float :average_bar_star_rating DEFAULT '(Bar.find(params[:id]).reviews.average(:star_rating))'
    end
  end
end
