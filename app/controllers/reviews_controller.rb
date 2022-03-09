class ReviewsController < ApplicationController
    
    get '/reviews/:id' do
        review = Review.find(params[:id])
        review.to_json(
            include: [:movie, :critic]
        )
    end

    post '/reviews/:id' do
        review = Review.create(
            movie_id: params[:movie_id],
            review_content: params[:review_content]
        )
        review.to_json
    end

    patch '/reviews/:id' do
        review = Review.find(params[:id])
        attrs_to_update = params.select do |key, value|
            ['review_content'].include?(key)
        end
        review.to_json
    end

    delete '/reviews/:id' do
        review = Review.find(params[:id])
        review.destroy
        review.to_json
    end
end