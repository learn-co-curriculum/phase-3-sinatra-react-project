# class GamesController < ApplicationController
  
#     get "/games" do 
#       Game.all.to_json(methods: :age)
#     end
  
#     post "/games" do 
#       Game.create(game_params).to_json
#     end
  
#     private 
  
#     # a method used to specify which keys are allowed through params into the controller
#     # we use this method to create a list of what's permitted to be passed to .create or .update
#     # within controller actions.
#     def game_params
#       allowed_params = %w(name release_date price genre)
#       params.select {|param,value| allowed_params.include?(param)}
#     end
#   end