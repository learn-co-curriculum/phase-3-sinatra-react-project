class UsersController < ApplicationController


    class UsersController < ApplicationController

        post '/login' do
          user = User.find_by_email_address(params[:email_address])
          if user&.authenticate(params[:password])
            session[:user_id] = user.id
            user.to_json(include: [:todos, :shopping_items])
          else
            {error: "incorrect login credentials"}.to_json
          end
        end
      
        # GET: /users
        get '/users' do
          User.all.to_json
        end
      
        # POST: /users
        post '/users' do
          user = User.create(
            username: params[:username],
            email_address: params[:email_address],
            password: params[:password],
            budget: params[:budget]
          )
          user.to_json
          if User.find_by_email_address(params[:email_address])
            user.to_json
          else
            {error: "No new record created"}.to_json
          end
        end
      
        # GET: /users/5
        get '/users/:id' do
          if User.find_by_id(params[:id])
            User.find_by_id(params[:id]).to_json
          else
            {error: "Record not found with id #{params['id']}"}.to_json
          end
        end
      
        get '/users/:id/todos' do
          user = User.find_by_id(params[:id])
          user.todos.to_json
        end
      
        get '/users/:id/shopping_items' do
          user = User.find_by_id(params[:id])
          user.shopping_items.to_json
        end
      
        # PATCH: /users/5
        patch '/users/:id' do
          user = User.find_by_id(params[:id])
          user.update(
            username: params[:name],
            email_address: params[:email_address],
            password: params[:password],
            budget: params[:budget]
          )
          user.to_json
        end
      
        # DELETE: /users/5/delete
        delete '/users/:id' do
          user = User.find_by_id(params[:id])
          if user
            user.destroy
            user.to_json
          else
            {error: "Record not found with id #{params['id']}"}.to_json
          end
        end
      end