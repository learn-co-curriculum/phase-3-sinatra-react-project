class User < ActiveRecord::Base
    has_many :jokes
    has_many :comments, through: :users
    validates :username, uniqueness: true, presence: true

    def login 

        def login_action 
            user = Userlist.find_by(username: params[:username])
            if user and user.authenticate(params[:password])
                session[:user_id] = user.id 

                
                else
    
            end

        end
    end
end