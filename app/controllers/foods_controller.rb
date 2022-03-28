class FoodsController < ApplicationController

get '/foods' do 
    foods = Food.all
    foods.to_json
end


end