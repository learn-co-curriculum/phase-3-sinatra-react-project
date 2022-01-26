class CreateJobs < ActiveRecord::Migration[6.1]
   def change
    create_table :jobs do |t| 
      t.string :company_name 
      t.string :job_title 
      t.string :location
      t.string :employment_type
      t.string :work_site
      t.string :job_url      
      t.integer :salary
      t.date :application_date 
      t.date :follow_up_date
  end
end
end


# Location,Job title, company , In person/remote/hybrid , pay, job full time/part time, Job URL, Language