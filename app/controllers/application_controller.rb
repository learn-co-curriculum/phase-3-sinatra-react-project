class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/" do
    "Welcome to the SeXn project!"
  end

end
