# frozen_string_literal: true

# t.string :item_name
# t.string :review
# t.integer :star_rating
# t.float :cost
# t.belongs_to :activity, class_name: 'activity', foreign_key: 'activity_id'
# t.belongs_to :store, class_name: 'store', foreign_key: 'store_id'

# ActiveRecord::Base model for Purchase
class Purchase < ActiveRecord::Base
  belongs_to :activity
  belongs_to :store
end
