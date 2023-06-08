class AddUserIdCredentials < ActiveRecord::Migration[6.1]
  def change
    add_column :credentials, :user_id, :integer
  end
end
