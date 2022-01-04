class OrderController < ApplicationController

    get '/departments' do
        Department.all.to_json
    end

end