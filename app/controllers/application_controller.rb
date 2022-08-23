class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # if one wants the adopted/non-adopted animals: add query param => /animals?adopted=true[or false]
  get "/animals" do
    animals = Animal.all
    adopted = params[:adopted]
    if adopted != nil
      animals = animals.select { 
        |animal| adopted == "true" ? animal.adopted? : !animal.adopted? 
      }
    end
    animals_details = animals.map do |animal|
      Animal.get_detail(animal.id)
    end
    animals_details.to_json
  end

  get "/animals/:id" do
    animal = Animal.get_detail(params[:id])
    animal.to_json
  end

  get "/animals/:id/comments" do
    animal = Animal.find(params[:id])
    animal.comments.to_json
  end

  get "/animals/:id/likes" do
    animal = Animal.find(params[:id])
    animal.likes.to_json
  end

  post "/animals/:id/comments" do
    comment = Comment.create(
      message: params[:message],
      user_id: params[:user_id],
      animal_id: params[:id]
    )
    comment.to_json
  end

  post "/animals/:id/likes" do
    like = Like.create(
      animal_id: params[:id],
      user_id: params[:user_id]
    )
    like.to_json
  end

  post "/users" do
    user = User.create(
      name: params[:name],
      username: params[:username],
      password: params[:password],
      location: params[:location]
    )
    user.to_json
  end

  post "/animals/:id/donations" do
    donation = Donation.create(
      amount: params[:amount],
      animal_id: params[:id],
      user_id: params[:user_id]
    )
    donation.to_json
  end

  # forego the "?" from the adopted when making a request.
  patch "/animals/:id" do
    animal = Animal.find(params[:id])
    animal.update(
      adopted?: params[:adopted],
      user_id: params[:user_id]
    )
    animal.to_json
  end

  delete "/comments/:id" do
    comment = Comment.find(params[:id])
    comment.destroy
    comment.to_json
  end

  # Sinatra does NOT accept a body for delete method, but it accepts query parameters.
  delete "/animals/:id/likes" do
    like = Like.find_by(user_id: params[:user_id], animal_id: params[:id])
    like.destroy
    like.to_json
  end

end