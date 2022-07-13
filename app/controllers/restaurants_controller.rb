class RestaurantsController < ApplicationController
  get '/restaurants' do
    methods = {}
    if params.include?('include_review')
      # can we get this to return most recent review based on time?
      methods.merge!({ include: :reviews })
    end
    if params.include?('friends_only')
      # user id in params
      user = User.all.find([params['friends_only']])
      # console.log(user.followers)
      return user.to_json({ methods: [:followers] })
      # set = friends.reviews.restaurants.id
      # Restaurant.all.where(id inside set).tojson(methods)
    end
    methods.merge!({ methods: :average_score })
    Restaurant.all.to_json(methods)
  end
  get '/restaurants/:id' do
    find_restaurant
    @restaurant.to_json({ include: :reviews, methods: :average_score })
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
