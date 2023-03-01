class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/services" do
    services = Service.all
    services.to_json
  end

  get '/services/:id' do
    service = Service.find(params[:id])
    service.to_json
  end

  post '/services' do
    service = Service.create(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      image_url: params[:image_url]
    )

    service.to_json
  end

  patch '/services/:id' do
    service = Service.find(params[:id])
    service.update(
      description: params[:description],
      price: params[:price]
    )

    service.to_json
  end
  
  delete '/services/:id' do
    service = Service.find(params[:id])
    service.destroy
    service.to_json
  end

end
