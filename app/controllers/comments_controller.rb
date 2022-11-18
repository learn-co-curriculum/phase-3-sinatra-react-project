class CommentsController < ApplicationController

      post "/posts/:id" do
        comments = Comment.create!(comment: params[:comment], user_id: params[:user_id], post_id: params[:post_id]).to_json
      end

      get "/comments" do
        comments = Comment.all.to_json
      end

      

      get "/comments/:id" do
        comment = Comment.find(params[:id]).to_json
      end

      # post "/:postid/comments" do
      #   comment = Comment.create(params[:comment]).to_json
      # end

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