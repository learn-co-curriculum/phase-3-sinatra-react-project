class ReviewsController < ApplicationController
    get '/reviews' do
        Review.all.to_json
    end
end