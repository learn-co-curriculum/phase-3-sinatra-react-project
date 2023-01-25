# class ReviewController < ApplicationController
#     get '/reviews' do
#         reviews = Review.all
#         reviews.to_json
#       end
    
#       get '/reviews/:id' do
#         review = Review.find(params[:id])
#         review.to_json
#       end
    
#       post '/reviews' do
#         review = Review.create(star_rating:params[:star_rating], content:params[:content], bar_id:params[:bar_id], user_id:params[:user_id])
#         review.to_json
#       end
    
#       delete '/reviews/:id' do
#         review = Review.find(params[:id])
#         review.destroy
#         review.to_json
#       end
    
# end