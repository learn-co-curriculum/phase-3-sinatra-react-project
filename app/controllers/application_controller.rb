class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # fetch for all bars on "home page"
  get '/bars' do
    bars = Bar.all
    bars.to_json(only: [:name, :category, :price], include: [:reviews])
  end

#  get for each individual bar in bar info
  get '/bars/:id' do
    bar = Bar.find(params[:id])
    bar.to_json(only: [:name, :location ,:category, :price, :closing_time], include: {reviews: {only: [:star_rating, :content]}})
  end

  get '/reviews' do
    reviews = Review.all
    reviews.to_json(include: {user: {only: [:username]}})
  end
  
  get '/reviews/:id' do
    review = Review.find(params[:id])
    review.to_json(only: [:star_rating, :content])
  end
  
  post '/reviews' do
    review = Review.create(star_rating:params[:star_rating], content:params[:content], bar_id:params[:bar_id], user_id:params[:user_id])
    review.to_json
  end
  
  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end


  get '/crawl_list' do
    bar_crawl = BarCrawl.all
    bar_crawl.to_json
  end

  get '/crawl_list/:id' do
    bar_crawl = BarCrawl.find(params[:id])
    bar_crawl.to_json(only: [:bar_crawl_name], include: {user: {only: [:display_name]}})
  end


  post '/crawl_list' do 
    bar_crawl_bar = BarCrawlBar.create(bar_id:params[:bar_id], bar_crawl_id:params[:bar_crawl_id])
    bar_crawl_bar.to_json
  end

  get '/users' do 
    user = User.all
    user.to_json
  end

end


# --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


# post '/bars' do
#   bar = Bar.create(name:params[:name], category:params[:category], price:params[:price], closing_time:params[:closing_time], location:params[:location])
#   bar.to_json
# end

# delete '/bars/:id' do
#   bar = Bar.find(params[:id])
#   bar.destroy
#   bar.to_json
# end


