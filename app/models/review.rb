class Review < ActiveRecord::Base
    belongs_to :user, class_name: "User", foreign_key: "user_id"
    belongs_to :bar, class_name: "Bar", foreign_key: "bar_id"
end