class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
    
    # Add your routes here
  post "/login" do
    @user = User.find_or_create_by(username: params[:username])
    @user.update(token: SecureRandom.hex )
    return {token: @user.token}.to_json
  end

  delete "/logoff" do
    binding.pry
    @user = User.find_by(token: headers["token"])
    @user.update(token: nil)
  end


  post "/species" do
    @species = Species.new(species_name: params[:species_name], description: params[:description])
    if @species.save
      return @species.to_json
    else
      "Error: Species not created"
    end
  end

end