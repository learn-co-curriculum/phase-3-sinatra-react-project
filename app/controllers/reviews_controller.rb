class ReviewsController < ApplicationController

##ryry github test

  # GET: /reviews
  get "/reviews" do
    Review.all.to_json( except: [:created_at, :updated_at])
  end

  # GET: /reviews/new
  get "/reviews/new" do
    
  end

  # POST: /reviews
  post "/reviews" do
    review = Review.create(rating: params[:rating], text: params[:text])
    if review.id
      halt 201, location.to_json
    else
      halt 400, location.errors.full_messages.to_sentence.to_json
    end
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
    review = Review.find(params[:id])
    review.destroy
    review.to_json
    
  end
end
