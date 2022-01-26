class MemeftController < ApplicationController
    get "/memefts" do
        Memeft.all.to_json
    end

    post "/memefts" do
        Memefts.create(
            title: params[:title],
            price: params[:price],
            creator: params[:creator],
            owner: params[:owner],
            for_sale: params[:for_sale],
            user_id: params[user_id]
        ).to_json
    end

    patch "memefts/:id" do
        memeft = Memeft.find(params[:id])
        memeft.update(
            owner: params[:owner],
            for_sale: params[:for_sale],
            user_id: params[:user_id]
        )
    end
end