# frozen_string_literal: true

# t.string :activity_name
# t.string :item_first
# t.string :item_second
# t.string :item_third

# ActiveRecord::Base model for Activity
class Activity < ActiveRecord::Base
  has_many :purchases
  has_many :stores, through: :purchases
end
