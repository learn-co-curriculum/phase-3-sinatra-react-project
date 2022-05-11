require 'pry'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

  get "/users" do
    users = User.all
    serialize(users)
  end

  get "/users/:id" do
    user = User.find(params[:id])
    not_me = User.all.filter{|item| 
      item.id != user.id
    }
    liked_users_id_arr = user.likes.pluck(:liked_user_id)

    liked_users_id_arr.each { |num|
    not_me.each { |u| 
    if u.id == num 
      not_me.delete(u)
    end
    }
    }
    data = {not_me: not_me, user:user}
    serialize(data)

  end

  get "/users/:id/matches" do
    matches = Match.all.where("user_id_1 = ? or user_id_2 = ?", params[:id], params[:id])
    found_users = []
    matches.each do |match|  
      match.user_id_1 == params[:id].to_i ? found_users<< User.find(match.user_id_2) : found_users << User.find(match.user_id_1)
    end
    # binding.pry

    serialize(found_users)
   
  end

  # patch "/users/:id/likes" do
  #   user = User.find(params[:id])
  #   user.create_like
  # end
  
  get "/likes" do
    likes = Like.all
    serialize(likes)
  end

  private

  def serialize(param)
    param.to_json
  end

end
