class ReviewsController < ApplicationController
    # read all reviews
    get '/reviews' do
        reviews=Review.all
        reviews.to_json
    end
end