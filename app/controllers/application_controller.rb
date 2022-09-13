class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/words" do 
    words = Word.all
    words.to_json
  end

  get "/words/:id" do
    word = Word.find(params[:id])
    word.to_json
  end

  post "/words" do
    new_word = Word.create(word:params[:word], image_url:params[:image_url])
    status 201
    new_word.to_json
  end

end
