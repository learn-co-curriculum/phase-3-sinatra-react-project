class ReviewSections < ActiveRecord::Migration[6.1]
  def change
    create_table "review_sections"do |t|
      t.string "name"
    end
  end
end
