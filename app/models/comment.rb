class Comment < ActiveRecord::Base 
    belongs_to :joke
 

    def leave_comment(user, rating, comment)
        self.jokes.create(
            user: user,
            rating: rating, 
            comment: comment
        )

        
    end
end