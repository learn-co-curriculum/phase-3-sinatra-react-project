class CharacterController < ApplicationController::
    def index
        @characters = character.all 
        render json: @characters 
    end
end