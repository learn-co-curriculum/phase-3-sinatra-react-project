class Review < ActiveRecord::Base
    belongs_to :user
    bundle exec rake db:migrate
    
end