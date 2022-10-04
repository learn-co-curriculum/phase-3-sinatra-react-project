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


    #GET ALL PEOPLE THAT YOU HAVEN'T VISITED BEFORE
    get "users-unseen/:id" do
      #you want to get all users that aren't part of this user's receivers
      curr_receivers=User.find(params[:id]).receivers
      #curr_receivers is an array of all YOUR receivers. now, we need to filter the actual ALL users so that it only returns the users that aren't part of your receivers
      User.select{|user| !curr_receivers.includes user}
    end

    #UNCOMMENT WHEN YOU NEED TO CHECK FOR ALL VISITED PEOPLE
    # get '/users-receivers/:id' do
    #   User.find(params[:id]).receivers.to_json
    # end

    #Create
    post '/users' do
      user = User.create(user_params)
      # 5.times do 
      #   User.receivers << User.sample
      #   Match.last.update(status: "pending");
      # end
      user.to_json
    end

    #Update
    patch '/users-rejections/:id' do
      # add a visited person to receivers, and change the match status to rejected
      #AT THIS POINT, the recevier id is the rejected person. they are RECEIVING a dislike. the user id is you.
      curr_person=User.find(params[:id]);
      curr_person.receivers << User.find(params["rejected_person_id"])

      curr_match = Match.where(user_id: params[:id]).find_by receiver_id: params["rejected_person_id"]
      curr_match.update(status: "rejected")

      curr_person.receivers.to_json
    end


    patch '/users-likes/:id' do
      # add a visited person to receivers, and change the match status to pending if doesn't exist or accepted if it does
      curr_person=User.find(params[:id]);
      curr_person.receivers << User.find(params["liked_person_id"])
      curr_match = Match.where(user_id: params[:id]).find_by receiver_id: params["liked_person_id"]
      #because you like that person, you want to check if the match the other way is pending or not
      existing_match=Match.where(user_id: params["liked_person_id"]).find_by receiver_id: params[:id]
      if existing_match
        if existing_match.status == "pending"
          existing_match.update(status: "accepted")
          curr_match.update(status: "accepted")
          #DO SOMETHING ONCE THE STATUS IS ACCEPTED
          #
        else
          curr_match.update(status:"rejected")
        end
      else 
        curr_match.update(status: "pending")
      end

      liked_person.receivers.to_json
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
      {first_name:params[:first_name], last_name:params[:last_name], gender:params[:gender], email:params[:email], age:params[:age], bio:params[:bio], profile_img:params[:profile_img], desired_sex:params[:desired_sex]}
    end

end
