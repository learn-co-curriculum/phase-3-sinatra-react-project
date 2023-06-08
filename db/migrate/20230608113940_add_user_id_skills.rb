class AddUserIdSkills < ActiveRecord::Migration[6.1]
  def change
    add_column :skills, :user_id, :integer
  end
end
