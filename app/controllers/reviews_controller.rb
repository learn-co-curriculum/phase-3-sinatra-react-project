class ReviewsController < ApplicationController
    
  get "/reviews" do
    reviews = Review.all
    reviews.to_json
  end
end