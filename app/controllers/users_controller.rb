class UserController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    get "/users" do 
        users = User.all
        users.to_json
    end

    get "/users/:id" do 
        user = User.find(params[:id])
        user.to_json
    end

    post "/users" do 
        user = User.create(params)
        user.to_json
    end

    delete "users/:id" do
        User.destroy(prams[:id])
    end

    patch "users/:id" do 
        user = User.find(params[:id])
        user.update(params)
        user.to_json
    end
end