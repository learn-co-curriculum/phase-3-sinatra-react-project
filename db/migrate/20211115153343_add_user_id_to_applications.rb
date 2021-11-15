class AddUserIdToApplications < ActiveRecord::Migration[6.1]
  def change
    add_reference :applications, :user, index: true
  end
end
