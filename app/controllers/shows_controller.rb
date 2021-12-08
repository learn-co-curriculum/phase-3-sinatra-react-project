class ShowsController < ApplicationController
    
  get "/shows" do
    shows = Show.all
    shows.to_json
  end

  get "/shows/:id" do 
    show = Show.find(params[:id])
    show.to_json(include: :reviews)
  end

  get "/shows/:id/reviews" do 
    show = Show.find(params[:id]).reviews
    show.to_json
  end

  post '/shows/:id/reviews' do
    review = Review.create(
      rating: params[:rating],
      comment: params[:comment],
      show_id: params[:show_id],
      user_id: params[:user_id]
    )
    review.to_json
  end
  patch '/shows/:id/reviews' do 
    review = Review.find(params[:id])
    review.update(
      comment: params[:comment],
      rating: params[:rating]
    )
    review.to_json
  end

  delete "/shows/:id/reviews" do
    review = Review.find(params[:id])
    review.destroy
    {message:'review destroyed'}.to_json
  end

end