# frozen_string_literal: true

# t.string :store_name
# t.string :address
# t.string :item_1
# t.float :item_1_cost
# t.string :item_2
# t.float :item_2_cost
# t.string :item_3
# t.float :item_3_cost
# t.string :item_4
# t.float :item_4_cost

# ActiveRecord::Base model for Company
class Store < ActiveRecord::Base
  has_many :purchases
  has_many :activities, through: :purchases
end
