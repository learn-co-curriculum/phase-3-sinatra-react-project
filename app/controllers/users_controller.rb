class UsersController < ApplicationController
  set :default_content_type, 'application/json'

    #Read
    get '/users' do
      users= User.all
      users.to_json
    end

    get '/users/:id' do
      user = User.find(params[:id])
      user.to_json
    end

    get '/users-data/:email' do
      user=User.find_by email: params[:email]
      user.id.to_json
    end


    #UNCOMMENT WHEN YOU NEED TO CHECK FOR THE VISITED PEOPLE
    # get '/users-rejections/:id' do
    #   # add a visited person to receivers, and change the match status to rejected
    #   User.find(params[:id]).receivers.to_json
    # end

    #Create
    post '/users' do
      user = User.create(user_params)
    end

    #Update
    patch '/users-rejections/:id' do
      # add a visited person to receivers, and change the match status to rejected
      rejected_person=User.find(params["rejected_person_id"]);
      rejected_person.receivers << User.find(params[:id])
      rejected_person.receivers.to_json
    end

    patch '/users/:id' do
      user = User.find(params[:id])
      user.update(user_params)
      user.to_json
    end


  



    patch '/users-request/:id' do
      #add a visited person to receivers and chang ethe match status to rejected IF match status doesn't already exist. if it exists and status is pending, change it to accept. if it 
      #exists and status is rejected, don't change status.

    end

    #Delete
    delete '/users/:id' do
      user = User.find(params[:id])
      user.destroy
      status 204
    end

    private

    def user_params
      {first_name:params[:first_name], last_name:params[:last_name], gender:params[:gender], email:params[:email], bio:params[:bio], profile_img:params[:profile_img], desired_sex:params[:desired_sex]}
    end

end