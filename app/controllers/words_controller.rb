require 'pry'
class WordsController < ApplicationController

    get "/words" do 
        words = Word.all
        words.to_json
      end

    get "/randomwords" do 
        randomwords = Word.all.sample(4).uniq
        picked_word = randomwords.sample
        game_stuff = {word: picked_word, word_array: randomwords}
        game_stuff.to_json
    end  

    get "/words/:id" do
        word = Word.find(params[:id])
        word.to_json
    end

    get "/getGameWords/:id" do 
        game_words = Game.find(params[:id])
        game_words.gameWords.to_json
    end 
    
    post "/words" do
        new_word = Word.create(word:params[:word], image_url:params[:image_url])
        status 201
        new_word.to_json
    end

    post "/gameWords" do
        new_game_word = GameWord.create(word_id:params[:word_id], game_id:params[:game_id], correct?:params[:correct?])
        status 201
        new_game_word.to_json
    end

    delete "/words/:id" do
        old_word = Word.find(params[:id])
        old_word.destroy
        status 204
    end

end