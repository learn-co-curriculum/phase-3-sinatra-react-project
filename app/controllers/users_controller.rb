class UsersController < ApplicationController
    get "/users" do
        if params.include?("name")
            include_arr
            include_arr <<  :following  if params.include?('following')
            include_arr <<  :followers  if params.include?('followers')
            return User.find_by(name: params['name']).to_json({include: include_arr})
        end
        User.all.to_json
    end
    get '/users/:id' do
        # specify multiple flags: http://localhost:9292/users/1?followers&following
        include_arr = []
        find_user
        include_arr <<  :following  if params.include?('following')
        include_arr <<  :followers  if params.include?('followers')
        @user.to_json({ include: include_arr })
    end
    private 
    def find_user
        @user = User.find([params[:id]])
    end
end