class Review < ActiveRecord::Base
    belongs_to :user
<<<<<<< HEAD
    bundle exec rake db:migrate
    
=======
    belongs_to :book
>>>>>>> main
end