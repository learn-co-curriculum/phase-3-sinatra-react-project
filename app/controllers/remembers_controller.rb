require 'pry'
class RemembersController < ApplicationController

    #Read

        ##FOR "HOME"PAGE
    # get '/remembers' do
    # end 


    get '/remembers/all' do
        remembers = Remember.all
        remembers.to_json
    end

        ##SORT BY DATE

    get '/remembers/all_reverse' do
        remembers = Remember.all.sort_by(&:created_at).reverse!
        remembers.to_json
    end
    #remembers/sort/:direction
    # ascending sort_bysort_by(&:created_at)
    # descending sort_by(&:created_at).reverse! 

    # get '/remembers/sort/:direction' do
    #     if ascending
    #         sort_by(&:created_at)
    #     else
    #         sort_by(&:created_at).reverse!
    #     end
    # end 

    get '/remembers/:id' do
        remember = Remember.find_by(id: params[:id])
        remember.to_json

    end 



    #Create

    post '/remembers' do
        # binding.pry
        remember = Remember.create(
          user_id: params[:user_id],
          category_id: params[:category_id],
          remember: params[:remember]
        #   timestamps: params[:timestamps]
        )
        remember.to_json
        # status 201

    end

    #Update

    patch '/remembers/:id' do
        remembers = Remember.find_by(id: params[:id])
        remembers.update(
            user_id: params[:user_id],
            category_id: params[:category_id],
            remember: params[:remember]
        )
        remembers.to_json
    end
    # working on it 

    #Destroy
    delete '/remembers/:id' do
        remember = Remember.find_by(id: params[:id])
        remember.destroy
        remember.to_json
        status 204
    end 

end 