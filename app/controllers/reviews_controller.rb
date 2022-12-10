class ReviewsController < ApplicationController
    get '/reviews' do
        Review.all.to_json
    end

    get '/reviews/:id' do
        review = Review.find(params[:id])
        review.to_json
    end

    post '/reviews' do
        #binding.pry
        review = Review.create(
        review: params[:review]
        )
        review.to_json
    end
end