class InitialTables < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :activity_name
      t.string :item_first
      t.string :item_second
      t.string :item_third
    end
    create_table :purchases do |t|
      t.string :item_name
      t.string :review
      t.integer :star_rating
      t.float :cost
      t.belongs_to :activity, class_name: 'activity', foreign_key: 'activity_id'
      t.belongs_to :store, class_name: 'store', foreign_key: 'store_id'
    end
    # have the items be owned by the stores, have the purchases owned by the activities
    # then remove item foreign key from store when bought? switch the foreign key?...
    create_table :stores do |t|
      t.string :store_name
      t.string :address
      t.string :item_1
      t.float :item_1_cost
      t.string :item_2
      t.float :item_2_cost
      t.string :item_3
      t.float :item_3_cost
      t.string :item_4
      t.float :item_4_cost
    end
  end
end
