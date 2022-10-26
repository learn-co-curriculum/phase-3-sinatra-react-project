class EntriesController < ApplicationController

    #get all entries from all users - for global-brews tab
    get '/api/entries' do
        all_entries = Entry.all
        all_entries.to_json
    end

    #get specific entry w/ entry_id
    get '/api/entries/entry-id/:id' do
        entry = Entry.find_by(id: params[:id].to_i)
        entry.to_json
    end

    #get specific user's entries based on user id
    get '/api/entries/user/:id' do
        id = params[:id].to_i
        user_entries = Entry.all.filter { |entry| entry.user_id == id}
        user_entries.to_json
    end

    #  post new entry for specific user w/ user id - used in Home.js
    post '/api/entries/user/:id' do
        id = params[:id].to_i
        newBrew = Entry.create(name: params[:name], image_url: params[:image_url], location: params[:location], description: params[:description], user_id: id )
        newBrew.to_json
    end

    #patch - update an entry w/ entry_id
    patch '/api/entries/entry-id/:id' do
        entry = Entry.find_by(id: params[:id].to_i)
        entry.update(params)
        entry.to_json
    end

    #delete entire entry
    delete '/api/entries/entry-id/:id' do
        deleted_entry = Entry.find_by(id: params[:id].to_i)
        deleted_entry.destroy
    end

end