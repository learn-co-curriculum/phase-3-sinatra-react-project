class ChangeUserIdToGroupname < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_decision_joins, :user_id
    add_column :user_decision_joins, :group_name, :string
  end
end
