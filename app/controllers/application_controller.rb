class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # Add your routes here
  

  get "/words" do
    words = Word.all.filter {|w| w.game_word.length == 5 && w.is_used == false}
    words.to_json
  end

  get "/word_otd" do
    todays_word = Word.where(date_used: Date.current)
    if todays_word.empty? === false
      word_of_the_day = todays_word
    else
      words = Word.all.filter {|w| w.game_word.length == 5 && w.is_used == false}
      word_of_the_day = words.sample
      word_of_the_day.update(is_used: true, date_used: Date.current)
      word_of_the_day
    end
    word_of_the_day.to_json
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


  patch '/users/:id' do
    user = User.find(params[:id])
    user.update(
      highscore: params[:highscore]
    )
    user.to_json

  get '/users/:id/recent' do
    user = User.find(params[:id])
    user.recent_scores.to_json()
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

  post '/scores' do 
    new_score = Score.create(
      user_id: params[:user_id],
      word_id: params[:word_id],
      session_score: params[:session_score],
      guesses: params[:guesses],
      completed: params[:completed]
    )
    new_score.to_json
  end  

end


