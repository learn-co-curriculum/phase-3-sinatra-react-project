require 'pry'
class RemembersController < ApplicationController

    #Read

    get '/remembers/all' do
        remembers = Remember.all
        remembers.to_json
    end
    # actually, /remembers should == newly-created (if any) items
    # default would just be the "main page"

    # get all, get one, get [?]

    get '/remembers/:id' do
        remember = Remember.find_by(id: params[:id])
        remember.to_json

    end 

    ##SORT BY DATE

    ##DEFAULT PAGE

    #Create

    post '/remembers' do
        # binding.pry
        remember = Remember.create(
          user_id: params[:user_id],
          category_id: params[:category_id],
          remember: params[:remember],
          timestamps: params[:timestamps]
        )
        remember.to_json
    end

      ##params read as an empty hash    


    #   t.integer :user_id
    #   t.integer :category_id
    #   t.string :remember
      
    #   t.timestamps

    #Update

    #Destroy
    delete '/remembers/:id' do
        remember = Remember.find_by(id: params[:id])
        remember.destroy
        remember.to_json
    end 

end 