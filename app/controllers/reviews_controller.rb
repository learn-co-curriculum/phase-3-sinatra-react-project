class ReviewsController < ApplicationController

##ryry github test

  # GET: /reviews
  get "/reviews" do
    Review.all.to_json(include: [:character, :location], except: [:created_at, :updated_at])
  end

  # GET: /reviews/new
  get "/reviews/new" do
    
  end

  # POST: /reviews
  post "/reviews" do
    text = params[:text]
    rating = params[:rating]
    location = Location.find_by(id: params[:location_id])
    character = Character.find_by(name: params[:character])
    if location && character 
    review = Review.create(rating: rating, text: text, location: location, character: character)
      halt 201, review.to_json(include: [:location, :character])
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
    review = Review.find_by(id: params[:id])
    review.update(text: params[:text])
    review.to_json
  end

  # DELETE: /reviews/5/delete
  delete "/reviews/:id" do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end
end
