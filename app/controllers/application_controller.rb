class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/" do
    arr = ["e", "a"]
    "Welcome to the Se#{arr.sample}n project!"
  end

end
