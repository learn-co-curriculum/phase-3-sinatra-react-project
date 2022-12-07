class ReviewController < ApplicationController

    get "/reviews" do 
        reviews = Review.all
        reviews.to_json
    end

    get "/reviews/:id" do
        reviews=Review.find(params[:id])
        reviews.to_json
    end

    post "/reviews" do
        review = Review.create(
            comment: params[:comment],
            destination_id: params[:destination_id]
        )
    review.to_json
    end

end