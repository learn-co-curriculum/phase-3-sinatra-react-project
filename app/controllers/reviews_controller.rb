class ReviewsController < ApplicationController
    

    # read all plants
    get '/reviews' do
        reviews=Review.all
        reviews.to_json
    end
end