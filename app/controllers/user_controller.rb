class UserController < ApplicationController

    # sign up
    post '/signup' do
        begin
            user = User.new(params)
            if user.username.blank? || user.email.blank? ||user.password.blank? || User.find_by_email(params[:email]) || User.find_by_username(params[:username])
                #dont persist
            else
                #persist
                user.save
                session[:user_id] = user.id
                user.to_json
    
            end
        rescue => e
            [422, {error: e.message}.to_json]
        end 
    end

    # login
    post '/login' do
        begin           
            user = User.find_by_username(params[:username])
            if user && user.authenticate(params[:password])
                session[:user_id] = user.id
                user.to_json
            end           
        rescue => e
            [422, {error: e.message}.to_json]
        end
    end

    # logout
    get '/logout' do
        begin
            logout = session.clear
            logout.to_json
        rescue => e
            [422, {error: e.message}.to_json]
        end
    end

end