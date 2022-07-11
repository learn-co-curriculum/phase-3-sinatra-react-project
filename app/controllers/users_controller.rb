class UsersController < ApplicationController
    get "/users" do

    User.all.to_json(include: [:posts])
end

get "/users/:user_id/posts" do
    find_user
    @user.posts.to_json(include: [:user])
end

get "/users" do
    User.all.to_json()
end

  post "/users" do
    user = User.new(params)
    if user.save

      user.to_json(include: [:posts])
    else
      "add user name"

    end
end
private
    def find_user

        @user = User.find_by_id(params["user_id"])
    end

end