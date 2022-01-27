class JobsController < ApplicationController 

    get '/jobs' do 
        Job.all.to_json
    end

    # get '/jobs/:id' do
    #     job = Job.find(params[:id])
    #     job.to_json
    # end

  
    post '/jobs' do 
       
        Job.create(
            company_name: params[:company_name],
            job_title: params[:job_title],
            location: params[:location],
            work_site: params[:work_site],
            job_url: params[:job_url],
            salary: params[:salary],        
        )
    end

    # delete '/jobs/:id' do 
    #     job = Job.find(params[:id]) 
    #     job.destroy.to_json
    # end

    # patch '/jobs/:id' do 
    #     job = Job.find(params[:id]) 
    #     job.update(
    #         company_name: params[:company_name],
    #         job_title: params[:job_title],
    #         location: params[:location],
    #         work_site: params[:work_site],
    #         job_url: params[:job_url],
    #         salary: params[:salary],
    #         application_date: params[:application_date],
    #         follow_up_date: params[:follow_up_date]
    #     ).to_json
    # end
    
end