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

  get "/users/:id" do
    user = User.find([params[:id]])
    user.to_json
  end

  get "/animals/:id/comments" do
    animal = Animal.find(params[:id])
    animal_comments = animal.comments.map do |comment|
      {**comment.attributes, "username" => comment.user.username, "location" => comment.user.location}
    end
    animal_comments.to_json
  end

  get "/animals/:id/likes" do
    animal = Animal.find(params[:id])
    animal.likes.to_json
  end

  get "/donations/topdonor" do
    top_donor = Donation.top_donor
    top_donor.to_json
  end

  get "/donations/topdonee" do
    top_donee = Donation.top_donee
    top_donee.to_json
  end

  post "/animals/:id/comments" do
    comment = Comment.create(
      message: params[:message],
      user_id: params[:user_id],
      animal_id: params[:id]
    )
    new_comment = {**comment.attributes, "username" => comment.user.username, "location" => comment.user.location}
    new_comment.to_json
  end

  post "/animals" do
    animal = Animal.create(
      name: params[:name],
      species: params[:species],
      description: params[:description],
      image_url: params[:image_url],
      adopted?: params[:adopted?],
      user_id: params[:user_id]
    )
    animal.to_json
  end

  post "/animals/:id/likes" do
    like = Like.find_or_create_by(
      animal_id: params[:id],
      user_id: params[:user_id]
    )
    like.to_json
  end

  post "/signup" do
    user = User.find_by(username: params[:username])
    if user != nil
      halt 409, {:error => "Username already exists"}.to_json
    else
      user = User.create(
        name: params[:name],
        username: params[:username],
        password: params[:password],
        location: params[:location]
      )
      user.to_json
    end
  end

  post "/animals/:id/donations" do
    donation = Donation.create(
      amount: params[:amount],
      animal_id: params[:id],
      user_id: params[:user_id]
    )
    donation.to_json
  end

  post "/login" do
    username = params[:username]
    password = params[:password]
    user = User.find_by(username: username, password: password)
    if user != nil
      return user.to_json
    else
      halt 401, {:error => "Cannot find user"}.to_json
    end
  end

  # forego the "?" from the adopted when making a request.
  patch "/animals/:id" do
    animal = Animal.find(params[:id])
    animal.update(
      adopted?: params[:adopted?],
      user_id: params[:user_id]
    )
    adoption_status = {**animal.attributes, "owner" => animal.user.name}
    adoption_status.to_json
  end

  delete "/comments/:id" do
    comment = Comment.find(params[:id])
    comment.destroy
    comment.to_json
  end

  delete "/animals/:id" do
    animal = Animal.find(params[:id])
    animal.destroy
    animal.to_json
  end

  # Sinatra does NOT accept a body for delete method, but it accepts query parameters.
  delete "/animals/:id/likes" do
    like = Like.find_by(user_id: params[:user_id], animal_id: params[:id])
    like.destroy
    like.to_json
  end

end