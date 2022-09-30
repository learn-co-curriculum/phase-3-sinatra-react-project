class CreateUserDecisionJoins < ActiveRecord::Migration[6.1]
  def change
    create_table :user_decision_joins do |t|
      t.integer :decision_id
      t.integer :user_id
    end
  end
end
