class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/businesses' do 
    Business.all.to_json 
  end 

  get '/business/:id' do 
    Business.find(params[:id]).to_json(include: :reviews)
  end 

  post '/businesses' do 
    biz = Business.create(
      name: params[:name], 
      type: params[:type],
      address: params[:address] 
    )
    biz.to_json 
end
