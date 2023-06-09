class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/houses' do
    house = House.all.order(:location)

    house.to_json(:include => {:reviews => {:include => :user}})

    # house.to_json
  end

  get '/reviews' do
    review = Review.all.order(:rating)
    review.to_json(:include => {:house => {:include => :users}})
  end

  get '/reviews/:id' do
    review = Review.find(params[:id])

    review.to_json(:include => {:house => {:include => :users}})
  end

  get '/users' do
    review = User.all.order(:username)
    review.to_json
  end
  
  post "/reviews" do
    # binding.pry
    review = Review.create(content: params[:content], rating: params[:rating], user_id: params[:user_id], house_id: params[:house_id])
    review.to_json
  end

  post "/houses" do
    # binding.pry
    house = House.create(image: params[:image], location: params[:location], description: params[:description])
    house.to_json
  end

  patch '/reviews/:id' do
    # binding.pry
    review = Review.find(params[:id])
    review.update(
      content: params[:content]
    )
    review.to_json
  end
  
  delete "/houses/:id" do
    # binding.pry
    house = House.find(params[:id])
    house.destroy
    house.to_json
  end

  delete "/reviews/:id" do
    # binding.pry
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

end
