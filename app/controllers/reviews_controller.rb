class ReviewsController < ApplicationController

##ryry github test

  # GET: /reviews
  get "/reviews" do
    System.all.to_json(include: [:characters, :locations], except: [:created_at, :updated_at])
  end

  # GET: /reviews/new
  get "/reviews/new" do
    
  end

  # POST: /reviews
  post "/reviews" do
    review = Review.create(rating: params[:rating], text: params[:text])
    review.to_json
  end
    

  # GET: /reviews/5
  get "/reviews/:id" do
    
  end

  # GET: /reviews/5/edit
  get "/reviews/:id/edit" do
    
  end

  # PATCH: /reviews/5
  patch "/reviews/:id" do
    
  end

  # DELETE: /reviews/5/delete
  delete "/reviews/:id/delete" do
    
  end
end
