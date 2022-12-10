class ReviewsController < ApplicationController
    get '/reviews' do
        Review.all.to_json
    end

    get '/reviews/:id' do
        review = Review.find(params[:id])
        review.to_json
    end

    post '/reviews/:bookId' do
        #binding.pry
        review = Review.create(
        review: params[:review],
        book_id: params[:bookId]
        )
        review.to_json
    end

    patch '/reviews/:id' do
        review = Review.find(params[:id])      
        review.update(
            review: params[:review]
            )
        review.to_json
    end

    delete '/reviews/:id' do
        review = Review.find(params[:id])
        review.destroy
        review.to_json
    end
end