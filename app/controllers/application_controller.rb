class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here #http://localhost:9292/games/
  get "/bubleteas/" do
    bubbleteas = Bubbletea.all
    bubbleteas.to_json
  end
  get "/bubleteas/:id" do
    bubbleteas = Bubbletea.find(params[:id])
    bubbleteas.to_json
  end

end
