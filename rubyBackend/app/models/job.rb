class Job < ActiveRecord::Base 
    has_many :user_jobs
    has_many :joblangs

    has_many :users, through: :user_jobs    
    has_many :languages, through: :joblangs

    

end