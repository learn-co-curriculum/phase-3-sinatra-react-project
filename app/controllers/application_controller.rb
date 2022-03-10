class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # Add your routes here
  

  get "/words" do
    words = Word.all
    words.to_json
  end

  get '/scores' do 
    score = Score.all
    score.to_json
  end

  get '/' do
    "Your IP address is #{request.ip}"
  end

  get '/suggested-words' do 
    suggestions = Suggestion.all
    suggestions.to_json
  end 

  post '/suggested-words' do 
    suggest_word = Suggestion.create(
      suggested_word: params[:suggested_word],
      approved: params[:approved],
      user_id: params[:user_id]
    )
    suggest_word.to_json
  end

  patch '/suggested-words/:id' do
    updated_word = Suggestion.find(params[:id])
    updated_word.update(
      suggested_word: params[:suggested_word]
    )
    updated_word.to_json
  end
  
  delete '/suggested-words/:id' do
    delete = Suggestion.find(params[:id])
    delete.destroy
    delete.to_json
  end

  get '/users' do 
    users = User.all
    users.to_json
  end

  get '/users/:id' do 
    users = User.find(params[:id])
    users.to_json(include: :scores)
  end

  post '/users' do 
    new_user = User.create(
      username: params[:username],
      password: params[:password],
      difficulty: params[:difficulty],
      highscore: params[:highscore],
      ip_address: params[:ip_address]
    )
    new_user.to_json
  end

end
