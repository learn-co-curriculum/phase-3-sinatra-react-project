class WordController < ApplicationController

    get "/words" do
        Word.all.to_json
    end
    
    get "/words/:id" do
        word = word.find(params[:id])
        word.to_json
    end
    
    post "/words" do
        word = word.create(word_params)
        word.to_json
       end

       private

def word_params
    allowed_params = %w(game_word)
    params.filter {|param,value| allowed_params.include?(param)}
end

end