class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/games" do
    Game.all.order(:title).to_json
  end

  delete '/users/:id' do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end

  #stand in for when we make game relationships editable
  # patch '' do
  #   game_relationship = GameRelationship.find(params[:id])
  #   game_relationship.update()
  #   game_relatinship.to_json
  # end

end
