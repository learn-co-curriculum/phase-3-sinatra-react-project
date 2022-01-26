class CreateJobs < ActiveRecord::Migration[6.1]
   def change
    create_table :job do |t| 
      t.string :company_name 
      t.string :job_title 
      t.date :application_date 
      t.date :follow_up_date
  end
end
end
