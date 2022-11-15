class Comment < ActiveRecord::Base
    belongs_to :commented_user, :class_name => "User", :foreign_key => "user_id"
    belongs_to :commented_post, :class_name => "Post", :foreign_key => "post_id"
end 