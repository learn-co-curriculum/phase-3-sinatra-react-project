class LogsController < ApplicationController
    # get an existing log
    get "/logs/:id" do 
        # binding.pry
        # find the log by id 
        log = Log.find_by_id(params[:id])
        
        # send the response to json
        log.to_json
    end

    # create a new log for that user
    post "/users/:id" do 
        # binding.pry
        # find the user
        user = User.find(params[:user_id])
        # create a new log using that user's id and params object
        new_log = Log.create(
            user_id: user.id,
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
        # binding.pry
        # find the log by id 
        log = Log.find_by_id(params[:id])

        # update the log using the params object
        log.update(params)
        log.save
        
        # send the response to json
        log.to_json
    end

    # delete a log
    delete "/logs/:id" do 
        # find the log to delete by id 
        log = Log.find(params[:id])
        
        # destroy the log 
        # status 204 # this was a successful request
        log.destroy
    end

    private

    # def edit_logs_params
    #     params.permit(:title, :author, :star_rating, :comment)
    # end

end