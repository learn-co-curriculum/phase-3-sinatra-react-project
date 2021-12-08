class FavoritesController < ApplicationController

    get "/favorites" do
        Favorite.all.to_json(include: [:post, :user])
    end

    get "/favorites/:id" do
        Favorite.find([params[:id]]).to_json(include: [:post, :user])
    end

    post "/favorites" do
        favorite = Favorite.create({
            user_id: params[:user_id],
            post_id: params[:post_id]
        })
        Favorite.to_json(include: [:post, :user])
    end

    delete "/favorites/:id" do
        favorite = Favorite.find(params[:id])
        favorite.destroy
        {message: "Favorite Deleted"}.to_json
    end

end