class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here #http://localhost:9292/games/
  get "/bubbleteas" do
    bubbleteas = Bubbletea.all
    bubbleteas.to_json
    # {message: 'hi'}.to_json
  end
  
  get '/customers' do
    customers = Customer.all
    customers.to_json
  end

  get '/orders' do
    orders = Order.all
    orders.to_json
  end

end

# get "/bubleteas/:id" do
#   bubbleteas = Bubbletea.find(params[:id])
#   bubbleteas.to_json
# end