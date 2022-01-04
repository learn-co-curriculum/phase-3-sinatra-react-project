class UserController < Sinatra::Base
    set :default_content_type, 'application/json'
  
    get "/users" do
      User.all.to_json
    end
  
    get "/users/:id" do
      User.find(params[:id]).to_json
    end
  
    post "/users" do
      User.create(
        first_name: params[:first_name],
        last_name: params[:last_name],
        household_id: params[:household_id]
      ).to_json
    end
  
    delete '/users/:id' do
      user = User.find(params[:id])
      user.destroy
      user.to_json
    end

    patch "/users/:id" do
        user = User.find(params[:id])
        user.update(
            first_name: params[:first_name],
            last_name: params[:last_name],
            household_id: params[:household_id]
        )
        user.to_json
    end
end