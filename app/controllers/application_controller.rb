class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  # fetch for all bars on "home page"
  get '/bars' do
    bars = Bar.all
    bars.to_json
  end
 # (include: {reviews: {only: [:star_rating, :content]}}) @ end of line 7

#  get for each individual bar in bar info
  get '/bars/:id' do
    bar = Bar.find(params[:id])
    bar.to_json(include: {reviews: {only: [:star_rating, :content]}})
  end

  # post '/bars' do
  #   bar = Bar.create(name:params[:name], category:params[:category], price:params[:price], closing_time:params[:closing_time], location:params[:location])
  #   bar.to_json
  # end

  # delete '/bars/:id' do
  #   bar = Bar.find(params[:id])
  #   bar.destroy
  #   bar.to_json
  # end

  # edit so that it gets all reviews of a specific user only
  get '/reviews' do
    reviews = Review.all
    reviews.to_json
  end


  # here just in case indiviuall review is needed
  get '/reviews/:id' do
    review = Review.find(params[:id])
    review.to_json
  end


  # post so client can add their own review
  post '/reviews' do
    review = Review.create(star_rating:params[:star_rating], content:params[:content], bar_id:params[:bar_id], user_id:params[:user_id])
    review.to_json
  end


  # delete so client can delete their own review
  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

end
