class Reviews < ActiveRecord::Migration[6.1]
  def change
    create_table "reviews" do |t|
      t.string "content"
      t.string "name"
      t.integer "review_section_id"
    end
  end
end
