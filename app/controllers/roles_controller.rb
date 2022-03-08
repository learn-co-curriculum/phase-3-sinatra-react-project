class RolesController < ApplicationController
    get '/roles/:id' do
        role = Role.find(params[:id])
        role.to_json(
            include: [:actor, :movie]
        )
    end
end