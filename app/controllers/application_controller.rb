class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  post '/review/' do
    if User.find(params[:user_id]).session_cookie == params[:session_cookie]
      new_review = Review.create(
        user_id: params[:user_id],
        business_id: params[:business_id],
        star_rating: params[:star_rating],
        comment: params[:comment]
      )
      new_review.to_json
    end
  end


  patch '/review/:id' do
    patch_review = Review.find(params[:id])
    if patch_review.user.id == params[:user_id]
      if patch_review.user.session_cookie == params[:session_cookie]
        patch_review.update(
          star_rating: params[:star_rating],
          comment: params[:comment]
        )
        patch_review.to_json
      end
    end
  end

  delete '/review/:id' do
    delete_review = Review.find(params[:id])
    if delete_review.user.id == params[:user_id]
      if delete_review.user.session_cookie == params[:session_cookie]
        delete_review.destroy
        delete_review.to_json
      end
    end
  end

  get '/businesses' do
    Business.all.to_json
  end

  get '/business/:id' do
    Business.find(params[:id]).to_json(only: [:name, :address, :business_type, :id, :price, :image_url], include:
      { reviews: { only: [:comment, :star_rating, :id, :business_id], include: {
        user: { only: [:username, :profile_picture, :id] }
      } } })
  end

  post '/businesses' do
    biz = Business.create(
      name: params[:name],
      business_type: params[:business_type],
      address: params[:address]
    )
    biz.to_json
  end

  get '/businesses/search/:term' do
    biz = Business.all.filter do |business|
      business.name.downcase.include?(params[:term].downcase) ||
      business.business_type.downcase.include?(params[:term].downcase)
    end
    biz.to_json(include: :reviews)
  end

end
