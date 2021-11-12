class CreateApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :applications do |t|
      t.string :company
      t.string :position
      t.string :status
    end
  end
end

# status: 
# pending, rejected, offer made, interviewing 