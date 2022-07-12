class LogsController < ApplicationController
    # get all logs for that user to display
    get "/logs" do
        # binding.pry
        # find the current user by finding the user with the id that is stored in session[:id]
        @user = User.find(session[:id])
        # find all the logs of that user
        logs = @user.logs
        # send the response to json
        logs.to_json
    end


    # create a new log
    post "/logs" do 
        # find the user
        @user = User.find(session[:id])
        # create a new log using that user's id and params object
        new_log = Log.create(
            user_id: @user.id, 
            title: params[:title],
            author: params[:author],
            star_rating: params[:star_rating],
            comment: params[:comment]
        )
        # send the response to json
        new_log.to_json
    end

    # edit a previous log
    patch "/logs/:id" do 
        # find the log by id 
        log = Log.find(params[:id])

        # update the log using the params object
        @log.update(params)

        # send the response to json
        @log.to_json
    end

    # delete a log
    delete "/logs/:id" do 
        # find the log to delete by id 
        log = Log.find(params[:id])
        
        # destroy the log 
        # status 204 # this was a successful request
        @log.destroy
      end
end