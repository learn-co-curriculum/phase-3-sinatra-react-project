class CreateCardset < ActiveRecord::Migration[6.1]
  def change
    create_table :cardsets do |t|
    t.integer :card_id
    t.integer :user_id
    t.string :title
      t.timestamps
    end
  end
end
