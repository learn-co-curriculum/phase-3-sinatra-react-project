class CreateShips < ActiveRecord::Migration[6.1]
  def change
    create_table "ships" do |t|
      t.string "name"
      t.integer "character1_id"
      t.integer "character2_id"
    end
  end
end
