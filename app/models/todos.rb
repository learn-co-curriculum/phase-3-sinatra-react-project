class Todo < ActiveRecord::Base
    belongs_to :category

    def self.all_items
        self.all.order(item: :asc).pluck(:item)
    end

    def self.all_importance
        self.all.order(importance: :asc)
    end

    def self.filter_importance(importance)
        self.all.filter{|todo| todo[:importance] === importance}
    end


end