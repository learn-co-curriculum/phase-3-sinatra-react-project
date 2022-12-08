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
  
    post "/destinations/:id/" do
        Review.create(name: params[:name], location: params[:location], description: params[:description], image: [:image]).to_json
    end
  
    delete '/reviews/:id' do
        Review.find(params[:id]).destroy

    end
    
    delete '/destinations/:id' do
        Review.find(params[:id]).destroy

    end

    get '/destinations/:id' do
      Destination.find(params[:id]).to_json(include: :reviews)
    end
  
    patch "/destination/:id" do
      Destination.find(params[:id])
      Destination.update(likes:params[:likes]).to_json
    end
  
end
