class UsersController < ApplicationController 

    get '/users' do 
        User.all.to_json({include: :jobs})
    end

    # get '/users/:user' do
    #     user = User.find_by(params[:user.name]).id
    #     user.to_json({include: :jobs})
    # end

    post '/users' do 
        User.create(name: params[:name])
    end


    post '/users/:name' do        
            # find the user,once found,create Job.create(pass the params here)
            # User.find(x).Job.create(params here)
            
            User.find_by(name: params[:name]).jobs.create(
                company_name: (params[:company_name]),
                job_title: (params[:job_title]),
                location: (params[:location]),
                employment_type: (params[:employment_type]),
                work_site: (params[:work_site]),
                job_url: (params[:job_url]),
                salary: (params[:salary]),
            )
        
    end

    delete '/users/:id' do 
        User.find_by(name: params[:name]).jobs
        
    end

    patch '/users/:id' do 
        User.find(params[:id]) 
        user.update(
            name: params[:name]
        ).to_json
    end

end