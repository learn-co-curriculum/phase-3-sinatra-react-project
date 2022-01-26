class UsersController < ApplicationController 

    get '/users' do 
        User.all.to_json({include: :job})
    end

    post '/users' do 
        User.create(
            name: params[:name]
        ).to_json
    end

    delete '/users/:id' do 
        User.find(params[:id]) 
        user.destroy.to_json
    end

    patch '/users/:id' do 
        User.find(params[:id]) 
        user.update(
            name: params[:name]
        ).to_json
    end

end