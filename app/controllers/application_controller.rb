class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

   
  
    get "/destinations" do
      Destination.all.to_json()
    end

   
    get "/reviews" do 
       Review.all.to_json()
         
    end
  
    post "/reviews/:id" do
        Review.create(comment: params[:comment]).to_json
    end

    post "/destinations/:id" do
        Review.create(comment: params[:comment], destination_id: params[:id]).to_json
    end

    post "/destinations" do
        Destination.create(name: params[:name], location: params[:location], description: params[:description], image: params[:image]).to_json
    end
  
    delete '/reviews/:id' do
        Review.find(params[:id]).destroy

    end
    
    delete '/destinations/:id' do
        Destination.find(params[:id]).destroy

    end

    get '/destinations/:id' do
      Destination.find(params[:id]).to_json(include: :reviews)
    end
  
    patch "/destinations/:id" do
      destination = Destination.find(params[:id])
      destination.update(likes: params[:likes])
      destination.to_json
    end
  
end
