class GuessController < ApplicationController
    get "/guesses" do
        Guess.all.to_json
       end

    get "/guesses/:id" do
        guess = Guess.find(params[:id])
        guess.to_json
    end
    
    post "/guesses" do
        guess = Guess.create(guess_params)
        guess.to_json
    end

       private

def guess_params
    allowed_params = %w(input hint word game)
    params.filter {|param,value| allowed_params.include?(param)}
end

end