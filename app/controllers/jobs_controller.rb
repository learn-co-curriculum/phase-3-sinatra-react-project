class JobsController < ApplicationController 

    get '/jobs' do 
        Job.all.to_json
    end

    post '/jobs' do 
        Job.create(
            company_name: params[:company_name],
            job_title: params[:job_title],
            application_date: params[:application_date],
            follow_up_date: params[:follow_up_date]
        ).to_json
    end

    delete '/jobs/:id' do 
        Job.find(params[:id]) 
        job.destroy.to_json
    end

    patch '/jobs/:id' do 
        Job.find(params[:id]) 
        job.update(
            company_name: params[:company_name],
            job_title: params[:job_title],
            application_date: params[:application_date],
            follow_up_date: params[:follow_up_date]
        ).to_json
    end

end