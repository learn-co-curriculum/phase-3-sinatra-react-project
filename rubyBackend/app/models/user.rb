class User < ActiveRecord::Base 
    has_many :user_jobs 
    has_many :jobs, through: :user_jobs

    def highest_salary 
        self.jobs.order(:salary).max
    end
 

end