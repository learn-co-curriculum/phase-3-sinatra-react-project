class User < ActiveRecord::Base 
    has_many :users_jobs 
    has_many :jobs, through: :users_jobs
end