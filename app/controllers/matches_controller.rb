class MatchesController < ApplicationController
  set :default_content_type, 'application/json'

    get '/matches' do
        { message: "Good luck with your project! matches" }.to_json

    end
  

end

