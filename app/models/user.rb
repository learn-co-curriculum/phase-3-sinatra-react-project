class User < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

    has_many :followers, foreign_key: :follower_id, class_name: "Friendship"
    has_many :following, through: :followers

    has_many :following, foreign_key: :following_id, class_name: "Friendship"
    has_many :followers, through: :following

    include BCrypt

    def password
        @password ||= Password.new(password_hash)
    end
    
    def password=(new_password)
        binding.pry
        @password = Password.create(new_password)
        self.password_hash = @password
    end

    # def self.create_new_login(username, password)
    #     binding.pry
    #     @user = User.new(username: username)
    #     @user.password = params[:password]
    #     @user.save!
    # end

    def login(uname, pwd)
        @user = User.find_by(username: uname)
        @user_hash = BCrypt::Password.new(@user.password_hash)
        # BCrypt tests if the pwd (string) is equal to the password_hash stored in the db
        if @user_hash == pwd 
            {message: "Success"}
        else 
            {message: "Error"}
        end
    end

end