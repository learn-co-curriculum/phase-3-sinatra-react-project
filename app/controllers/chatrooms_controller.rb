class ChatroomController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    get "/chatrooms" do 
        chatrooms = Chatroom.all
        chatrooms.to_json
    end

    get "/chatrooms/:id" do 
        chatroom = Chatroom.find(params[:id])
        chatroom.to_json
    end

    post "/chatrooms" do 
        chatroom = Chatroom.create(params)
        chatroom.to_json
    end

    delete "chatrooms/:id" do
        Chatroom.destroy(prams[:id])
    end

    patch "chatrooms/:id" do 
        chatroom = User.find(params[:id])
        chatroom.update(params)
        chatroom.to_json
    end
end