class UsersController < ApplicationController
  set :default_content_type, 'application/json'

    #Read
    get '/users' do
      users= User.all
      users.to_json
    end

    get '/users/:id' do
      user = User.find(params[:id])
      puts user
      user.to_json
    end

    get '/users-data/:email' do
      user=User.find_by email: params[:email]
      user.id.to_json
    end
    
    get '/last-user' do
      User.last.to_json
    end

    get '/users-data/:username' do
      user=User.find_by username: params[:username]
      user.id.to_json
    end

    #GET ALL PEOPLE THAT YOU HAVEN'T VISITED BEFORE
    get "users-unseen/:id" do
      #you want to get all users that aren't part of this user's receivers
      curr_receivers=User.find(params[:id]).receivers
      #curr_receivers is an array of all YOUR receivers. now, we need to filter the actual ALL users so that it only returns the users that aren't part of your receivers
      User.select{|user| !curr_receivers.includes user}
    end

    get '/users-receivers/:id' do
      User.find(params[:id]).receivers.to_json
    end

    get '/users/matches/:id' do
      matches = Match.where(["user_id = ? and status = ?", params[:id], "accepted"])
      
      matches_data = matches.map { |match|
          match = match,
          conversation = match.messages,
          receiver = match.receiver
      }
      
      matches_data.to_json
    end

    #Create
    post '/users' do
      user = User.create(user_params)
      20.times do 
         User.all.sample.receivers << user
        Match.last.update(status: "pending");
      end
      user.to_json
    end

    # test route for creating a match
    post '/matches/create/:id' do
      match = Match.create(
        user_id: params[:id],
        receiver_id: User.all.sample.id,
        status: "accepted"
      )
      match.to_json
    end

    
    # testing create route
    post '/user/create' do
      user = User.create(
        first_name:params[:first_name], 
        last_name:params[:last_name], 
        gender:params[:gender], 
        email:params[:email], 
        age:params[:age], 
        bio:params[:bio], 
        profile_img:params[:profile_img], 
        desired_sex:params[:desired_sex], 
        username:params[:username], 
        password:params[:password]
      )
      # 20.times do 
      #    User.all.sample.receivers << user
      #   Match.last.update(status: "pending");
      # end
      user.to_json
    end

    post "/users/login" do 
      user = User.find_by username: params[:username]
       if user[:password] ==  params[:password]
        user.to_json
       else 
        status 403
       end
    end
      

    #Update
    patch '/users-rejections/:id' do
      # add a visited person to receivers, and change the match status to rejected
      #AT THIS POINT, the recevier id is the rejected person. they are RECEIVING a dislike. the user id is you.
      curr_person=User.find(params[:id]);
      curr_person.receivers << User.find(params["rejected_person_id"])

      curr_match = Match.where(user_id: params[:id]).find_by receiver_id: params["rejected_person_id"]

      curr_match.update(status:"rejected")
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
          return "#{params[:id]} just matched with #{params["liked_person_id"]}".to_json
          #
        else
          curr_match.update(status:"rejected")
        end
      else 
        curr_match.update(status: "pending")
      end

      liked_person.receivers.to_json
    end

    patch '/users-edit-profile/:id' do
      curr_person=User.last
      curr_person.update(profile_img: params["profile_img"])
      curr_person.update(first_name: params["first_name"])
      curr_person.update(last_name: params["last_name"])
      curr_person.update(age: params["age"])
      curr_person.update(bio: params["bio"])
      curr_person.update(desired_sex: params["desired_sex"])
      curr_person.to_json
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
      Match.where(user_id: params[:id]).destroy_all
      Match.where(receiver_id: params[:id]).destroy_all
      user.destroy

      status 204
    end

    private

    def user_params
      {
        first_name:params[:first_name], 
        last_name:params[:last_name], 
        gender:params[:gender], 
        email:params[:email], 
        age:params[:age], 
        bio:params[:bio], 
        profile_img:params[:profile_img], 
        desired_sex:params[:desired_sex], 
        username:params[:username], 
        password:params[:password]
      }
    end

end