class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table "comments" do |t|
      t.string "name"
      t.string "comment"
      t.integer "ship_id"
    end
  end
end
