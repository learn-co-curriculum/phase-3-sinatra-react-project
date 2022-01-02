class Todo < ActiveRecord::Base
    belongs_to :category

    def self.all_items
        self.all.order(item: :asc).pluck(:item)
    end
end