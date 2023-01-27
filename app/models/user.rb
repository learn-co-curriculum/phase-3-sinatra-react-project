class User < ActiveRecord::Base
    # has_many :comments
    # has_many :jokes, through: :comments
    validates :username, uniqueness: true, presence: true
    has_secure_password

    def self.login_action(username, password)
        user = self.find_by(username: username)
        if user && user.authenticate(password: password)
            binding.pry
            session[:user_id] = user.id
        # elsif "Cannot find user. Would you like to make a password?"
            # true : false?
        else 
            "Cannot make a comment."
        end


    end

    def remove_comments(joke)
    Comment.where(user_id: self.id, comment_id: comment.id).delete_all
    end
end