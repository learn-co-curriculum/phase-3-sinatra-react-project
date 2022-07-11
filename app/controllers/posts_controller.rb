class PostsController < ApplicationController
    get "/posts" do
        Post.all.to_json()
    end

    # get "/posts/:post_id/user" do
    #     Post.find_by_id(params['id'])
    # end
    delete '/posts/:id' do
        Post.find(params[:id]).destroy
       
    end

    private
        def find_user
            @user = User.find_by_id(params["user_id"])
        end

        def find_post
            @post = Post.find_by_id(params["post_id"])
        end
    end