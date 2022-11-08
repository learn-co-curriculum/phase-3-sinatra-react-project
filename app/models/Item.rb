class Item < ActiveRecord::Base
belongs_to :category

 validates :name, presence: true
 validates :category_id, presence: true
 validates :completed, inclusion: { in: [true, false] }

    def errors_array
        self.errors.full_messages
    end

    def self.by_name
        self.name.downcase
    end

end  