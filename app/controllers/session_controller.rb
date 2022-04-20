class SessionController < ApplicationController

    post "/login" do
        @user = User.find_or_create_by(username: params[:username])
        @user.update(token: SecureRandom.hex )
        return {token: @user.token}.to_json
    end


    delete "/logoff" do
        @user = User.find_by(token: request.env["HTTP_TOKEN"])
        @user.update(token: nil)
    end
end


