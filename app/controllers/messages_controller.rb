class MessagesController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    get "/messages" do 
        messages = Message.all
        messages.to_json
    end

    get "/messages/:id" do 
        message = Message.find(params[:id])
        message.to_json
    end

    post "/messages" do 
        message = Message.create(params)
        message.to_json
    end

    delete "messages/:id" do
        Message.destroy(prams[:id])
    end

    patch "messages/:id" do 
        message = Message.find(params[:id])
        message.update(params)
        message.to_json
    end
end