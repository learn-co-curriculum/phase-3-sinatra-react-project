class CreateUsersJobs < ActiveRecord::Migration[6.1]
   def change
    create_table :user_job do |t| 
      t.integer :user_id
      t.integer :job_id
    end
  end
end
