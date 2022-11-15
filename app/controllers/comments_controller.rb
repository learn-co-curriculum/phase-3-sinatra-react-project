class CommentsController < ApplicationController

    get "/comments" do
        comments = Comment.all.to_json
      end

      get "/comments/:id" do
        comment = Comment.find(params[:id]).to_json
      end

      post "/comments" do
        comment = Comment.create(params).to_json
      end

      patch "/comments/:id" do
        comment = Comment.find(params[:id])
        comment.update(params)
        comment.to_json
      end

      delete "/comments/:id" do
        comment = Comment.find(params[:id])
        comment.destroy
      end
end